class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email].downcase)
    if user && user.authenticate(params[:password])
      flash.now[:success] = 'ログインしました'
      puts "success!"
    else
      flash.now[:danger] = 'Invalid email/password combination'
      puts "failed..."
      render 'new'
    end
  end

  def destroy
  end
end
