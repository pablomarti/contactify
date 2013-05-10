module Contactify
  module Generators
    class GenerateViewsGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../../../../../app/views", __FILE__)
      desc "Generate Views of Contactify"

      def copy_views
        directory "contactify", "app/views/contactify"
      end      
    end
  end
end