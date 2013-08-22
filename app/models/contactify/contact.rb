module Contactify
  class Contact < ActiveRecord::Base
    attr_accessible :comment, :email, :first_name, :last_name
    attr_accessible :phone, :country, :city

    validates :first_name, :last_name, :email, :presence => true
  end
end
