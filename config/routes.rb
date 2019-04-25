Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users,
  	:controllers => { :omniauth_callbacks => "omniauth_callbacks", :registrations => "registrations" },
  	path: '',
	path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'}
  
  resources :users, only: [:show]

  resources :posts, only: [:index, :show, :create, :destroy] do
  	resources :photos, only: [:create]
  end
end
