Rails.application.routes.draw do
  get 'admin/index'
  get 'admin/login'
  get 'admin/takecredentials'
  get 'admin/destroy'
  get 'faculty/index'
  get 'faculty/login'
  get 'faculty/takecredentials'
  get 'faculty/destroy'
  #resources :widgets
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
	
	resources :courses
	resources :admin
	controller :admin do
    get 'login' => :new
    post 'admin/login' => :takecredentials
    get 'logout' => :destroy
  end
  resources :faculty
	controller :faculty do
    get 'login' => :new
    post 'faculty/login' => :takecredentials
    get 'logout' => :destroy
  end
	root to: 'courses#index'
   
end
