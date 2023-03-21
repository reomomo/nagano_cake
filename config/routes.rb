Rails.application.routes.draw do

  devise_for :customers, module: "public"
  devise_for :admin, module: "admin"

  root to: 'public/homes#top'
  get '/about' => 'public/homes#about'

  scope module: :public do
    resources :items, only: [:index, :show]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
