Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :tracks

  root to: 'tracks#index'

  namespace :admin do
    resources :users
    root to: 'users#index'
  end
end
