Rails.application.routes.draw do

  root 'ads#index'
  resources :ads
  post 'ads/new' => 'ads#create'
  post 'ads/:id/edit' => 'ads#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
