Rails.application.routes.draw do

  mount Contactify::Engine => "/contactify", :as => "contactify_engine"

  root :to => "welcome#index"

end
