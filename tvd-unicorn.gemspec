# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tvd-unicorn/version"

Gem::Specification.new do |s|
  s.name        = "tvd-unicorn"
  s.version     = TVDinner::Unicorn::VERSION
  s.author      = "Tom Bombadil"
  s.email       = "amanibhavam@destructuring.org"
  s.homepage    = "https://github.com/LYJlAigICVvPSVH/tvd-unicorn"
  s.summary     = "tvdinner: tvd-unicorn"
  s.description = s.summary
  s.license     = "Apache 2.0"

  s.executables  = []
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.files        = `git ls-files -- lib/* cookbooks/*`.split("\n") 

  s.files       += s.test_files
  s.files       += s.executables.map {|f| File.join("bin", f) }
  s.files       +=  %w(LICENSE NOTICE VERSION README.mkd)

  s.require_path = "lib"

  s.add_dependency "microwave"
end
