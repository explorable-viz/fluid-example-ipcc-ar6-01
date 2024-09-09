const puppeteer = require('puppeteer');
const express = require('express');
const serve = require('express-static');
require('http-shutdown').extend();

const app = express();

app.use(serve(__dirname + '/dist'));

const server = app.listen(8080, function(){
  console.log("Server running…");
}).withShutdown();

(async () => {
    const browser = await puppeteer.launch({
        args: ['--no-sandbox'],
        timeout: 10000,
    });
    const page = await browser.newPage();
    await page.goto('http://127.0.0.1:8080');
    await page.waitForSelector('#fig-output', {
        visible:true,
        timeout: 60000,
    });
    console.log('Fluid output figure found.')
    await browser.close().then(serverDown);
})();

function serverDown()
{
  console.log('Shutting down server…')
  server.shutdown(function(err) {
    if (err) {
      return console.log('shutdown failed', err.message);
    }
    console.log('Everything is cleanly shutdown.');
  });
}
