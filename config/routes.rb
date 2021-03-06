RailsPrelaunchSignup::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  match "/home" => "home#index"
  match "/about" => "about#index"
  match "/cause" => "cause#index"
  match "/apply" => "apply#index"
  match "/signup" => "signup#signup"
  match "/blog" => "blog#index"
  match "/donate" => redirect("http://www.indiegogo.com/projects/kubmo"), :as => :Donate
  match "/media" => "home#media" 

end
