# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "client_side_autocomplete/version"

Gem::Specification.new do |s|
  s.name        = "client_side_autocomplete"
  s.version     = ClientSideAutocomplete::VERSION
  s.authors     = ["Shenouda Bertel"]
  s.email       = ["ShenoudaB@gmail.com"]
  s.homepage    = "http://mobithought.com"
  s.summary     = %q{Client Side AutoComplete}
  s.description = %q{Client Side AutoComplete}

  s.rubyforge_project = "client_side_autocomplete"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('rails', '~>3.1.0')

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
