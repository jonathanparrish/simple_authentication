class LoginController < ApplicationController
  # before_action :set_session, only: [:login]
  def login
     session[:email] = params[:email] if params[:email]

  end
  def create
    user = Teacher.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      render 'new'
    end
  end
  private def set_session
  session[:email] = Teacher.find(params[:id]).email
  end
end
