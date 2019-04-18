class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if user_params[:password] == user_params[:password_confirmation]
      user = User.create(user_params)
      if user.save
        session[:user_id] = user.id
        flash[:notice] = "Registered as #{user.name}"
        redirect_to dashboard_path
      else
        flash[:notice] = "A account already exist with that email"
        redirect_to dashboard_path
      end
    else
      flash[:notice] = "Passwords did not match"
      redirect_to dashboard_path
    end
  end

  def show
    @facade = DashboardFacade.new
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
