# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap-for-ember-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap-for-ember-rails"
  spec.version       = BootstrapForEmberRails::VERSION
  spec.authors       = ["Dave Spurr"]
  spec.email         = ["david.spurr@gmail.com"]
  spec.summary       = %q{Rails 3.2+ Asset pipeline integration for bootstrap-for-ember js assets}
  spec.description   = %q{Add bootstrap-for-ember to your Rails & Ember project}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency "railties", "~> 3.2"
end
