Rails.application.routes.draw do

  get 'temp/index' #temporary route for index boxes
  resources :temp #temporary location for index boxes
  
  #resources :widgets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
  root to: 'main#index'
   
end
