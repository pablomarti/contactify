module Contactify::Concerns
  module Models
    module Contact
      	extend ActiveSupport::Concern
     
    	included do
		    attr_accessible :comment, :email, :first_name, :last_name
		    attr_accessible :phone, :country, :city

		    validates :first_name, :last_name, :email, :presence => true
    	end

    end
  end
end