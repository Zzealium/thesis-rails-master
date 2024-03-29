# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# app = File.expand_path('../app', __FILE__)
# $LOAD_PATH.unshift(app) unless $LOAD_PATH.include?(app)
require 'thesis/version'

Gem::Specification.new do |s|
  s.name          = "thesis"
  s.version       = "1.7.0"
  s.authors       = ["ClearSight Studio"]
  s.description   = %q{Thesis: A Rails CMS that doesn't hijack your development workflow.}
  s.summary       = %q{Thesis: A Rails CMS that doesn't hijack your development workflow.}

  s.required_ruby_version     = ">= 2.7.0"

  s.files         = Dir["{lib,app,config}/**/*"] + ["README.md", "LICENSE.txt"]
  s.require_paths = ["lib", "app"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "railties", ">= 5.0.0"
  s.add_dependency "sass", ">= 3.3"
  s.add_dependency 'sass-rails', '>= 1.0'
end
