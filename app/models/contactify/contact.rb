module Contactify
  class Contact < ActiveRecord::Base
    attr_accessible :comment, :email, :first_name, :last_name

    validates :first_name, :last_name, :email, :presence => true
  end
end
