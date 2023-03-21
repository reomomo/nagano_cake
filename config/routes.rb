Rails.application.routes.draw do

  namespace :public do
    get 'items/index'
    get 'items/show'
  end
  devise_for :customers, module: "public"
  devise_for :admin, module: "admin"
  root to: 'public/homes#top'
  get '/about' => 'public/homes#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
