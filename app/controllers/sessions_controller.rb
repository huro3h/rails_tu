class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email].downcase)
    if user && user.authenticate(params[:password])
      flash.now[:success] = 'ログインしました'
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Emailまたはパスワードが異なります'
      render 'new'
    end
  end

  def destroy
  end
end
