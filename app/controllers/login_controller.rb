class LoginController < ApplicationController

  def login
    session[:teacher_id] = params[:teacher_id] if params[:email]
  end

  def logout
  end
end
