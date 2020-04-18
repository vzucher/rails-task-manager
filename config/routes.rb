Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # READ
  get 'tasks', to: 'tasks#index'
  # CREATE
  get 'tasks/new', to: 'tasks#new', as: :new
  # READ
  get 'tasks/:id', to: 'tasks#show', as: :task
  # CREATE
  post 'tasks', to: 'tasks#create'
  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy

  # CHECK TASK
  patch 'tasks/:id/check', to: 'tasks#check', as: :check
end
