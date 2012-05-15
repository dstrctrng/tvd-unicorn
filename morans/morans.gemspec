# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "morans/version"

Gem::Specification.new do |s|
  s.name        = "morans"
  s.version     = Morans::VERSION
  s.authors     = ["Tom Bombadil"]
  s.email       = ["amanibhavam@destructuring.org"]
  s.homepage    = ""
  s.summary     = %q{Write a gem summary}
  s.description = %q{Write a gem description}

  s.executables  = []
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.files        = `git ls-files -- VERSION lib/*`.split("\n") 
  s.files       += s.test_files
  s.files       += s.executables.map {|f| File.join("bin", f) }

  s.require_paths = ["lib"]
end
