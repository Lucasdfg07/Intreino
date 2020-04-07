Rails.application.routes.draw do
  devise_for :trainers, controllers: { sessions: "trainers/sessions", registrations: "trainers/registrations" }
  devise_for :pupils, controllers: { sessions: "pupils/sessions", registrations: "pupils/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
