Rails.application.routes.draw do
  devise_for :users
  resources :contacts
  resources :schools
  root "schools#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
