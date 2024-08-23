module Article where

import Prelude hiding (absurd)

import App.Fig (drawFig, loadFig)
import App.Util (runAffs_)
import App.View.Util (FigSpec)
import Bind ((↦))
import Data.Tuple (uncurry)
import Effect (Effect)
import Module (File(..))
import Util ((×))

-- Delete this test case once we can enable/disable outputs via the UI

figSpec :: FigSpec
figSpec =
   { datasets: [ "methane" ↦ "data/methane-emissions" ]
   , imports: []
   , file: File "line-chart"
   , inputs: [ "methane" ]
   }

main :: Effect Unit
main = runAffs_ (uncurry drawFig) [ ("fig" × _) <$> loadFig figSpec ]
