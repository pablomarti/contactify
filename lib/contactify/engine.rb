module Contactify
  
  require 'rubygems'
  require 'recaptcha/rails'
  require 'recaptcha'

  class Engine < ::Rails::Engine
    isolate_namespace Contactify

    config.generators.load_generators

    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'contactify.yml')
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value.to_s
      end if File.exists?(env_file)
  	end
  end
end
