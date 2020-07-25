class SessionsController < ApplicationController
  def new
  end

  def create
    #byebug
    if params[:name] == nil || params[:name] == ""
      redirect_to login_path
    elsif session[:name] = params[:name]
      redirect_to '/'
    end
  end

  #had to look up solution for this redirect - didn't know you could specify controller
  def destroy
    session.delete :name
    redirect_to '/'
  end

end
