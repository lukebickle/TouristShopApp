TouristShopApp::Application.routes.draw do

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

get "shops" => "products#index", as: :shops


end
