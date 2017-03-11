Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :tracks

  root to: 'tracks#index'

  namespace :admin do
    root 'users#index'

    resources :users
    resources :tracks
    resources :sections do
      resources :assignments
      resources :quizzes
    end
  end
end
