Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users,
  	controller: {registrations: 'registrations'}
  
  resources :users, only: [:show]
end
