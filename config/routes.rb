RailsPrelaunchSignup::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  match "/kate" => "people#kate"
  match "/marriel" => "people#marriel"
  match "/signup" => "signup#signup"
  match "/comments" => "people#comments"
  match "/yes" => "people#yes"
  match "/no" => "people#no"
  match "/about" => "home#about"
  match "/contact" => "home#contact"
  match "/why_donate" => "home#why_donate"

end
