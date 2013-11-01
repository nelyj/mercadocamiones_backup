Mercadocamiones::Application.routes.draw do
  resources :products
  devise_for :users, :controllers => {sessions: 'sessions'}

  root :to => 'home#index'

  match '/auth/login' => 'autentificacion#login', :as => :login

end
