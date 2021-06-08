Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read
  get 'tasks', to: 'tasks#index', as: :tasks

  get 'tasks/new', to: 'tasks#new'

  get 'tasks/:id', to: 'tasks#show', as: :task

  # Create

  # Update

  # Delete
end
