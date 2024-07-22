Rails.application.routes.draw do
  get 'tasks/create'
  get 'tasks/update'
  get 'tasks/destroy'
  devise_for :users
  resources :projects do
    member do
      get :remove_admin
      get :set_admin
    end

    resources :attachments, only: [:create, :destroy]
    resources :discussion_threads, only: [:create, :update, :destroy] do
      resources :messages, only: [:create, :update, :destroy]
    end
    resources :tasks, only: [:create, :update, :destroy]
  end
  root 'projects#index'
end

