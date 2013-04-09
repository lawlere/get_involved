RailsPrelaunchSignup::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  match "/home" => "home#index"
  match "/about" => "home#about"
  match "/what" => "home#what"
  match "/story" => "home#story"
  match "/cause" => "people#marriel"
  match "/signup" => "signup#signup"
  match "/blog" => "home#blog"
  match "/donate" => redirect("http://www.indiegogo.com/projects/kubmo"), :as => :Donate 

end
