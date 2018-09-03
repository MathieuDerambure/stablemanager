Rails.application.routes.draw do
  devise_for :users

  get "mark_as_done", to: "tasks#mark_as_done"
  get "mark_as_doing", to: "tasks#mark_as_doing"

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :horses do
    resources :tasks, only: [:new, :index, :create] do
      collection do
        patch :mark_as_doing_food
        patch :mark_as_done_food
      end
    end
  end

  get "tasks_index", to: "tasks#tasks_index", as: :tasks_index

  resources :profiles
  resources :communications
end
