# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "___NAME___/version"

Gem::Specification.new do |s|
  s.name        = "___NAME___"
  s.version     = TVDinner::___MNAME___::VERSION
  s.author      = "___AUTHOR___"
  s.email       = "___EMAIL___"
  s.homepage    = "___HOMEPAGE___"
  s.summary     = "___SUMMARY___"
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
