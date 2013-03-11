Contactify::Engine.routes.draw do
  
  get "contacts/new_public" => "contacts#new_public", :as => :contact_us
  post "contacts/save_public" => "contacts#save_public", :as => :contact_us_submit
  resources :contacts

end
