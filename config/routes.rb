Rails.application.routes.draw do
  get 'users/new' => 'users#new'
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
  post 'numpre/test_create' => 'numpre#test_create'
  get 'numpre/test/show' => 'numpre#test_show'


  get 'numpre/edit/:id' => 'numpre#edit'
  post 'numpre/:id/update' => 'numpre#update'
  post 'numpre/destroy/:id' => 'numpre#destroy'
  post 'numpre/create' => 'numpre#create'

  get 'numpre/can_answer' => 'numpre#can_answer'
  post 'numpre/answer_test' =>'numpre#answer_test'


  get 'numpre/:id' =>'numpre#test_show'
end
