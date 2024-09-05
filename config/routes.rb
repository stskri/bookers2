Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top', as: "top"
  get "/home/about" => "homes#about", as: "about"
  resources :books, only: [:new, :create, :index, :edit, :show, :destroy, :update]
  resources :users, only: [:index, :show, :edit, :update]
  get '/users/sign_out' => redirect('/homes/about')
end

about
<div class="container">
  <div class="row">
    <h1 class="px-3 mx-auto">Welcome to<strong>
      <i class="fa-solid fa-book"></i>
      Bookers</strong>!</h1>
  </div>
</div>

top
<div class="container">
  <div class="row">
    <div class="mx-auto col-11">
      <h1>welcome to <strong>
        <i class="fa-solid fa-book"></i>
        Bookers</strong> !!</h1>

      <p>In<strong>
        <i class="fa-solid fa-book"></i>
        Bookers</strong>,</p>

      <p>you can share and exchange your opinions , impressions , and emotions</p>

      <p>about various books!</p>

      <div class="btn-wrapper col-10 mx-auto">
        <div class="row">
          <%= link_to "Log in", new_user_session_path, class:'btn btn-info btn-sm btn-block mb-3' %>
        </div>
        <div class="row">
          <%= link_to "Sign up", new_user_registration_path, class:'btn btn-success btn-sm btn-block' %>
        </div>
      </div>
    </div>
  </div>
</div>