class SessionsController < ApplicationController
  def new
  end

  def create
    
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      redirect_to '/'
    end 
    session[:name] = params[:name]
  end

  def destroy
    if !session[:name]
      #session.delete :name
    else 
      session.delete :name 
      redirect_to controller: "application", action: "hello"
    end 
  end
end
