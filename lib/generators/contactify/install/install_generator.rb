module Contactify
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "Install  Contactify"

      def create_initializer_file
        #create_file "config/initializers/test.rb"
      end

      def copy_initializer_file
        copy_file "recaptcha.rb", "config/initializers/recaptcha.rb"
      end

      def copy_migrations
      	rake("contactify:install:migrations")
      end
      
    end
  end
end