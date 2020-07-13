Rails.application.routes.draw do
  resource :session, controller: "clearance/sessions", only: [:create]
  resources :users, only: [:create]
  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  
  resources :devices

  root to: "devices#index"
end