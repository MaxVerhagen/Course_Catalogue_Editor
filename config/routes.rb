Rails.application.routes.draw do
  get 'temp/index' #temporary route for index boxes
  resources :widgets
  resources :temp #temporary location for index boxes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
