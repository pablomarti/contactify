module Contactify
  class Contact < ActiveRecord::Base
    include Contactify::Concerns::Models::Contact
  end
end
