class WelcomeController < ApplicationController
  def login
  end

  def admin
    session[:perfil] = "Admin"
  end 

  def user
    session[:perfil] = "User"
  end 


end
