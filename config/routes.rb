Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :tracks

  root to: 'tracks#index'

  namespace :admin do
    root 'users#index'

    resources :users
<<<<<<< HEAD
    resources :tracks do
      resources :sections
=======
    resources :tracks
    resources :sections do
>>>>>>> bb05fd8a99376555315a99c0966d110769859c58
      resources :assignments
      resources :quizzes
    end
  end
end
