Rails.application.routes.draw do
  get 'users/new'
  get 'users/show'
  get 'signup' =>'users#new'
  post 'users/new' =>'users#new'

  get 'login' => 'users#login_form'
  post 'login' =>'users#login'
  get 'logout' =>'users#logout'
  get 'about' => 'numpre#about'
  get 'users/:id/show' => 'users#show'
  get 'numpre/index' => 'numpre#index'
  #numpre_controllerのcreateアクションを呼び出す
  get 'numpre/show' =>'numpre#show'
  get 'numpre/new' =>'numpre#new'
  post 'numpre/create' => 'numpre#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'numpre/:id' =>'numpre#show'
end
