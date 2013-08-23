require "contactify/engine"
Dir[File.dirname(__FILE__) + "/billify/concerns/models/*.rb"].each{ |f| require "contactify/concerns/models/#{File.basename(f, ".rb")}" }

module Contactify
end
