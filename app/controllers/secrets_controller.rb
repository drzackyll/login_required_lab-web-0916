class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def show
    if !session[:name]
      redirect_to '/secrets'
    else
      @name = session[:name]
    end
  end

  def secret

  end

  def require_login
    return head(:forbidden) if !session[:name]
  end

end
