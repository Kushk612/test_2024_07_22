Rails.application.routes.draw do
  # get 'poker_face/name:string'
  # get 'poker_face/batch_id:integer'
  # get 'poker_face/address:string'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  resources :poker_faces
  root "poker_faces#index"
end
