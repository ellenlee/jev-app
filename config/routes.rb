Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :tracks



  namespace :admin do
    root 'users#index'

    resources :users
    resources :tracks do
      resources :sections
      resources :assignments
      resources :quizzes
    end
  end

  get '/guide/welcome' => 'guide#welcome'

  root to: 'guide#index'
end
