RailsPrelaunchSignup::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  match "/home" => "home#index"
  match "/About" => "home#about"
  match "/What" => "home#what"
  match "/Story" => "home#story"
  match "/The%20Girls" => "people#marriel"
  match "/kate" => "people#marriel"
  match "/signup" => "signup#signup"
  match "/blog" => "home#blog"
  match "/Donate" => redirect("http://rally.org/kubmo"), :as => :Donate

end
