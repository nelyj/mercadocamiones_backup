Mercadocamiones::Application.routes.draw do
  resources :products
  devise_for :users

  root :to => 'home#index'

end
