Rails.application.routes.draw do
  get 'pages/one'
  get 'pages/two'
  #get 'pages/three'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'three', to: 'pages#three'
  get 'error', to: 'pages#error'
  get'*path', to: redirect('/error')
  root 'pages#one'

end
