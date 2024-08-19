{-
Welcome to a Spago project!
You can edit this file as you like.

Need help? See the following resources:
- Spago documentation: https://github.com/purescript/spago
- Dhall language tour: https://docs.dhall-lang.org/tutorials/Language-Tour.html

When creating a new Spago project, you can use
`spago init --no-comments` or `spago init -C`
to generate this file without the comments in this block.
-}
{ name = "my-project"
, dependencies =
  [ "aff"
  , "aff-promise"
  , "affjax"
  , "affjax-web"
  , "arrays"
  , "assert"
  , "bifunctors"
  , "console"
  , "control"
  , "debug"
  , "effect"
  , "either"
  , "exceptions"
  , "exists"
  , "filterable"
  , "foldable-traversable"
  , "foreign-object"
  , "functors"
  , "graphs"
  , "http-methods"
  , "identity"
  , "integers"
  , "lists"
  , "maybe"
  , "newtype"
  , "nonempty"
  , "numbers"
  , "ordered-collections"
  , "parsing"
  , "partial"
  , "prelude"
  , "profunctor"
  , "st"
  , "strings"
  , "tailrec"
  , "toppokki"
  , "transformers"
  , "tuples"
  , "unfoldable"
  , "unicode"
  , "unsafe-coerce"
  , "web-events"
  ]
, packages = ./packages.dhall
, sources =
  [ "src/**/*.purs"
  , "test/**/*.purs"
  , "fluid-submodule/src/**/*.purs"
  , "fluid-submodule/test/**/*.purs"
  ]
, backend = "purs-backend-es build"
}
