module Contactify
  
  require 'rubygems'
  require 'recaptcha/rails'
  require 'recaptcha'

  class Engine < ::Rails::Engine
    isolate_namespace Contactify
  end
end
