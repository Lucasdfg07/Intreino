Rails.application.routes.draw do
  devise_for :trainers
  devise_for :pupils
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
