Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :horses do
    resources :tasks, only: [:new, :index, :create]

  end
  get "tasks_index", to: "tasks#tasks_index", as: :tasks_index
  resources :profiles
  resources :communications

end
