Rails.application.routes.draw do

  
  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs


  root "artists#index"
  namespace :admin do 
  	resources :preferences
  end
end
