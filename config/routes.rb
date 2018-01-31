Rails.application.routes.draw do
  namespace :users do
    get 'omniauth_callbacks/vkontakte'
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
    get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
  end
  #resources :users
  resources :posts
  get 'profile/index'

  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
