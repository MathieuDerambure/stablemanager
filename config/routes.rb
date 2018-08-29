Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :horses do
    resources :tasks, only: [:new, :index, :create]
  end

  resources :profiles
  resources :communications

end
