class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:login][:username].downcase)

    if user && user.authenticate(params[:login][:password]) 
      session[:user_id] = user.id.to_s
      redirect_to browser_index_path, notice: 'Successfully logged in!'
    else
      flash.now.alert = "Login failed."
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: "Logged out."
  end
end
