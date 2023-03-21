Rails.application.routes.draw do
  devise_for :customers, module: "public"
  devise_for :admin, module: "admin"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
