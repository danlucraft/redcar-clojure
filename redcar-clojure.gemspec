
Gem::Specification.new do |s|
  s.name        = "redcar-clojure"
  s.version     = "0.2"
  s.platform    = "ruby"
  s.authors     = ["Daniel Lucraft", "Delisa Mason"]
  s.email       = ["dan@fluentradical.com"]
  s.homepage    = "http://github.com/danlucraft/redcar-clojure"
  s.summary     = "A Redcar plugin for Clojure development"
  s.description = ""
 
  s.files        = Dir.glob("lib/**/*") + %w(README.md plugin.rb) + Dir.glob("vendor/*")
  s.executables  = []
  s.require_path = 'lib'
end
