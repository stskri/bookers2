Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top', as: "top"
  get "/homes/about" => "homes#about", as: "about"
  resources :books, only: [:new, :create, :index, :edit, :show, :destroy, :update]
  resources :users, only: [:index, :show, :edit, :update]

end
