
Plugin.define do
  name    "clojure"
  version "1.0"
  file    "lib", "clojure"
  object  "Redcar::Clojure"
  dependencies "redcar", ">0",
               "repl",   ">0"
end