# Fluid example: from IPCC AR6 report

[Notes coming soon! 🚧]

## Security note ⚠️

The output of `yarn test` without the `--no-sandbox` option in `puppeteer.js` returns the following error:

```shell
 yarn run v1.22.22
 $ yarn puppeteer browsers install chrome && yarn puppeteer browsers install firefox && node puppeteer.js
 $ [redacted]/fluid-example-ipcc-ar6-01/node_modules/.bin/puppeteer browsers install chrome
chrome@128.0.6613.86 [~]/.cache/puppeteer/chrome/linux-128.0.6613.86/chrome-linux64/chrome
 $ [redacted]/fluid-example-ipcc-ar6-01/node_modules/.bin/puppeteer browsers install firefox
firefox@stable_129.0.2 [~]/.cache/puppeteer/firefox/linux-stable_129.0.2/firefox/firefox
Server running
[redacted]/fluid-example-ipcc-ar6-01/node_modules/@puppeteer/browsers/lib/cjs/launch.js:310
                reject(new Error([
                       ^

Error: Failed to launch the browser process!
[14148:14148:0909/105856.534151:FATAL:zygote_host_impl_linux.cc(126)] No usable sandbox! Update your kernel or see https://chromium.googlesource.com/chromium/src/+/main/docs/linux/suid_sandbox_development.md for more information on developing with the SUID sandbox. If you want to live dangerously and need an immediate workaround, you can try using --no-sandbox.


TROUBLESHOOTING: https://pptr.dev/troubleshooting

    at ChildProcess.onClose ([redacted]/fluid-example-ipcc-ar6-01/node_modules/@puppeteer/browsers/lib/cjs/launch.js:310:24)
    at ChildProcess.emit (node:events:529:35)
    at ChildProcess._handle.onexit (node:internal/child_process:292:12)

Node.js v18.19.1
 error Command failed with exit code 1.
 info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
```

Therefore the `--no-sandbox` option has been added, per <https://stackoverflow.com/a/51038064>.
Contributions that improve the security are welcome.
