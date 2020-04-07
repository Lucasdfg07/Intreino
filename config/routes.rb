Rails.application.routes.draw do
  devise_for :trainers, controllers: { sessions: "trainers/sessions", registrations: "trainers/registrations" }
  devise_for :pupils, controllers: { sessions: "pupils/sessions", registrations: "pupils/registrations" }
  
  resources :trains

  resources :trainers
  
  root 'welcome#index'
end
