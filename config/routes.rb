Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  scope module: :public do
    root to: 'homes#top'
    get '/about' => 'homes#about'
    resources :items, only: [:index, :show]
  end

  namespace :admin do
    get '/' => 'homes#top'
    resources :genres, except: [:show, :destroy, :new]
    resources :customers, only: [:show, :index, :edit, :update]
    resources :items, except: [:destroy]
    resources :orders, only: [:show, :update] do
      resources :order_details, only: [:update]
    end

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
