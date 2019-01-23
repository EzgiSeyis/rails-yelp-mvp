Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:index, :show, :new, :create]
  end
  resources :reviews, only: [:new, :create]

  namespace :admin do
    resources :restaurants, only: [:index, :update, :delete]
  end

  root to: 'restaurants#index'
end
