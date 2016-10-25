class SessionsController < ApplicationController


  def new
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to '/secrets'
    else
      session[:name] = params[:name]
      redirect_to '/logged'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/secrets'
  end


end
