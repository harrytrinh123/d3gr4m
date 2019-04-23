Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users,
  	:controllers => { :omniauth_callbacks => "omniauth_callbacks", :registrations => "registrations" },
  	path: '',
	path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'}
  
  resources :users, only: [:show]
end
