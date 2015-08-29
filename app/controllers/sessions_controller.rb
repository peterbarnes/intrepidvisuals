class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = Admin.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      self.current_user = user
      redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
    self.current_user = nil
    redirect_to root_url
  end

end
