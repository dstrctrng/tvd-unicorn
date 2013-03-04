# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "tvd-unicorn/version"

Gem::Specification.new do |s|
  s.name        = "tvd-unicorn"
  s.version     = TVDinner::Unicorn::VERSION
  s.homepage    = "http://destructuring.org/tvd-unicorn"
  s.license     = "Apache 2.0"

  s.executables  = []
  s.test_files   = `git ls-files -- {spec,tasks}/*`.split("\n")
  s.files        = `git ls-files -- lib/* cookbooks/*`.split("\n") 

  s.files       += s.test_files
  s.files       += s.executables.map {|f| File.join("bin", f) }
  s.files       +=  %w(LICENSE NOTICE VERSION README.md)

  s.require_path = "lib"

  s.add_dependency "tvd-runit"

  s.author      = "Tom Bombadil"
  s.email       = "amanibhavam@destructuring.org"
  s.summary     = "Unicorn under runit"
  s.description = "Unicorn under runit"
end
