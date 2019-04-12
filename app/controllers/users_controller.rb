class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if user_params[:password] == user_params[:password_confirmation]
      user = User.create(user_params)
      if user.save
      else
      end
    else
    end
  end


  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
