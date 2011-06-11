
require 'clojure/repl_mirror'

puts "loading the clojure plugin"

module Redcar
  class Clojure

    def self.menus
      Menu::Builder.build do
        sub_menu "Plugins" do
          sub_menu "REPL" do
            item "Open Clojure REPL", OpenClojureREPL
          end
        end
      end
    end

    def self.load_dependencies
      unless @loaded
        require File.join(vendor_dir, "clojure-1.2beta1.jar")
        require File.join(vendor_dir, "clojure-contrib-1.2beta1.jar")
        require File.join(vendor_dir, "org-enclojure-repl-server.jar")
        require File.join(vendor_dir, "enclojure-wrapper.jar")
        @loaded = true
      end
    end
    
    def self.vendor_dir
      File.expand_path("../../vendor", __FILE__)
    end

    class OpenClojureREPL < Redcar::REPL::OpenREPL
      def execute
        open_repl(ReplMirror.new)
      end
    end
  end
end