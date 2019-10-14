Rails.application.routes.draw do
  
  #resources :widgets
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
	
	resources :courses

	root to: 'courses#index'
   
end
