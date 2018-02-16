Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'

  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task
  get 'create', to: 'tasks#create', as: :create
  get 'update/:id', to: 'tasks#update', as: :update
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
  patch 'tasks/:id', to: 'tasks#rebirth', as: :rebirth
  post 'tasks', to: 'tasks#birth', as: :birth
end
