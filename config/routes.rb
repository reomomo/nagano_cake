Rails.application.routes.draw do

  devise_for :customers, module: "public"
  devise_for :admin, module: "admin"

  root to: 'public/homes#top'
  get '/about' => 'public/homes#about'

  scope module: :public do
    resources :items, only: [:index, :show]
  end

  namespace :admin do
    get '/' => 'homes#top'
    resources :genres, only: [:index, :edit, :create, :update]
    resources :customers, only: [:show, :index, :edit, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
