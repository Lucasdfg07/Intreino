Rails.application.routes.draw do
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :trainers, controllers: { sessions: "trainers/sessions", registrations: "trainers/registrations" }
  devise_for :pupils, controllers: { sessions: "pupils/sessions", registrations: "pupils/registrations" }
  devise_for :admins

  resources :trains

  resources :trainers

  resources :pupils 

  resources :ratings

  resources :solicitations

  resources :pupil_trainers

  resources :anamneses

  resources :admins do
    collection do
      get 'edit_trainer'
      post 'update'
    end
  end

  resources :weights do
    collection do
      post 'new'
    end
  end

  resources :exercises, except: [:show] do
    collection do
      get 'add'
      get 'remove'
      get 'edit'
      post 'edit'
      post 'update'
    end
  end
  
  post 'welcome/index'
  get 'welcome/index'

  root 'welcome#index'
end
