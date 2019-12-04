Rails.application.routes.draw do
  devise_for :users
  root "reviews#index"
  resources :reviews, only: [:index,:create,:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
