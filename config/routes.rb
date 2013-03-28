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
  match "/Marriel" => "people#marriel"
  match "/signup" => "signup#signup"
  match "/blog" => "home#blog"
  match "/Donate" => redirect("http://www.indiegogo.com/projects/kubmo"), :as => :Donate 

end
