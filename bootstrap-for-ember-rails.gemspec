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

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency "railties", "~> 4.0"

  spec.files = `git ls-files`.split("\n")

  # get an array of submodule dirs by executing 'pwd' inside each submodule
  gem_dir = File.expand_path(File.dirname(__FILE__)) + "/"
  `git submodule --quiet foreach pwd`.split($\).each do |submodule_path|
    Dir.chdir(submodule_path) do
      submodule_relative_path = submodule_path.sub gem_dir, ""
      # issue git ls-files in submodule's directory and
      # prepend the submodule path to create absolute file paths
      `git ls-files`.split($\).each do |filename|
        spec.files << "#{submodule_relative_path}/#{filename}"
      end
    end
  end
end
