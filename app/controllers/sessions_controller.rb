class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    session[:current_user] = @user
    redirect_to '/'
  end

  def login
    redirect_to '/auth/google_oauth2'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
