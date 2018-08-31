Rails.application.routes.draw do
  devise_for :users

  get "mark_as_done", to: "tasks#mark_as_done"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :horses do
    resources :tasks, only: [:new, :index, :create]

  end
  get "tasks_index", to: "tasks#tasks_index", as: :tasks_index
  resources :profiles
  resources :communications

end
