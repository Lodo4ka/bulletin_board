class SessionsController < ApplicationController
  def create
    render :new
  end

  def new
    user_info = request.env['omniauth.auth']
    raise user_info # Your own session management should be placed here.
  end
end
