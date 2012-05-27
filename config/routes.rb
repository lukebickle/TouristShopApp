TouristShopApp::Application.routes.draw do

  resources :reviews

  get "sessions/new", as: :new_session
  post "sessions/create", as: :sessions

 
    
  # get "brands/:id" => "brands#show", as: :brand
  
  get "logout" => 'sessions#destroy', as: :logout   
  
   resources :products
   
   get "brands/show"
   get "brands/:id" => "brands#show", :as => :brand
   

   root to: "products#index"   
 
end
