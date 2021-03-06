Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read
  get 'tasks', to: 'tasks#index', as: :tasks

  # Create
  post '/tasks', to: 'tasks#create'

  get 'tasks/new', to: 'tasks#new'

  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id/', to: 'tasks#update'

  # Delete
  delete 'tasks/:id/', to: 'tasks#destroy'

  # resources :tasks
end
