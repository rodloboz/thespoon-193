Rails.application.routes.draw do
  # get '/', to: 'pages#home'
  root to: 'pages#home'

  # method(params)
  #.     string
  # get(path, options = {})
  get 'pages/contact'
  # root + path, to: 'controller#action'
  get 'contact', to: 'pages#contact'
  # get 'about', to: 'pages#about'
  get 'pages/pricing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#index'

end
