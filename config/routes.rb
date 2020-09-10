Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
   }

  resources :contacts 
  resources :schools
  resources :businesses
  root "schools#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
