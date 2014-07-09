require "bootstrap-for-ember-rails/version"

module BootstrapForEmberRails
	class Engine < ::Rails::Engine
		initializer :assets do |config|
			Rails.application.config.assets.paths << root.join("lib", "bootstrap-for-ember-rails", "bootstrap-for-ember", "dist", "js")
		end
	end
end
