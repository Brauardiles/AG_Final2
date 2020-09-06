Rails.application.routes.draw do
  resources :businesses
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
   }
  resources :contacts
  resources :schools
  root "schools#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
