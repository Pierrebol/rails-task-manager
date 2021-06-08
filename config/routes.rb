Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read
  get 'tasks', to: 'tasks#index', as: :tasks

  # Create
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update

  # Delete
end
