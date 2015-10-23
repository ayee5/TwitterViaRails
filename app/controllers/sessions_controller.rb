class SessionsController < ApplicationController
  #create session to determine whether user is login
  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    session[:user_id] = @user.id
    redirect_to root_path
  end
  
  #destroy session when user logs out
  def destroy
    reset_session
    redirect_to root_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end