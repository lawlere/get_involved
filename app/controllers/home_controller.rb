class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def donate
  end	
  
  def about
  end

  def blog
  end	
 end

