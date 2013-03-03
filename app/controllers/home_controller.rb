class HomeController < ApplicationController
  def index
    @users = User.all
  end
  
  def about
  end

  def why_donate
  end 
 end

