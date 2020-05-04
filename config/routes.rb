Rails.application.routes.draw do

  root 'numpre#index'
  get '/' => 'numpre#index'
  get 'users/new' => 'users#new'
  post 'users/create' => 'users#create'
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

  get 'numpre/input' =>'numpre#input'
  post 'numpre/create' => 'numpre#create'
  get 'numpre/show/:id' => 'numpre#show'


  get 'numpre/edit/:id' => 'numpre#edit'
  post 'numpre/update' => 'numpre#update'
  post 'numpre/destroy/:id' => 'numpre#destroy'
  

  get 'numpre/can_answer' => 'numpre#can_answer'
  post 'numpre/answer_test' =>'numpre#answer_test'

  post 'like/:numpre_id' => 'numpre#like'
  post 'like/:numpre_id/destroy' => 'numpre#destroy_like'


  get 'numpre/:id' =>'numpre#show'
end
