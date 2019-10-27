Rails.application.routes.draw do
  
	get 'offerings/index'
	get 'admin/index'
	get 'admin/login'
	get 'admin/takecredentials'
	get 'admin/destroy'
	get 'admin/create'
	get 'admin/adminlist'
	get 'admin/erase'
	get 'courses/:id/offerings' => 'courses#offerings', :as => :offering_courses
  #resources :widgets
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
	resources :admin
	controller :admin do
    get 'login' => :new
    post 'admin/login' => :takecredentials
    get 'logout' => :destroy
    post 'admin/create' => :a_create
    post 'admin/erase' => :delete
  end
	
	get 'courses/history/:id', to: 'course_histories#index', as: 'course_history'
	get 'courses/history/detail/:id', to: 'course_histories#show', as: 'course_history_detail'

	resources :courses
	post "courses/search", to: "courses#search" 

	root to: "courses#index"
   
end
