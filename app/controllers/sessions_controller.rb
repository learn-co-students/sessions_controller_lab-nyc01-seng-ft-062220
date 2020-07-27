class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty? # go to login
      redirect_to "/sessions/new"
    elsif session[:name] # go to root
      redirect_to "/"
    else # put session name and go to root
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    session.delete(:name)
    redirect_to "/sessions/new"
  end

end
