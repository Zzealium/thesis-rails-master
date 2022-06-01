# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thesis/version'

Gem::Specification.new do |gem|
  s.name          = "thesis"
  s.version       = Thesis::VERSION
  s.authors       = ["ClearSight Studio"]
  s.email         = ["contact@clearsightstudio.com"]
  s.description   = %q{Thesis: A Rails CMS that doesn't hijack your development workflow.}
  s.summary       = %q{Thesis: A Rails CMS that doesn't hijack your development workflow.}
  s.homepage      = "https://github.com/clearsightstudio/thesis"

  s.required_ruby_version     = ">= 2.5.0"

  s.files         = Dir["{lib,app,config}/**/*"] + ["README.md", "LICENSE.txt"]
  s.require_paths = ["lib", "app"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "railties", "~> 7.0", ">= 7.0.3"
  s.add_dependency "sass", ">= 3.3"
  s.add_dependency "sass-rails", ">= 5.0"
end
