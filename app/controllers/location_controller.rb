class LocationController < ApplicationController

  def show
    @facade = LocationFacade.new
  end

  # private
  # def user_params
  #   params.require(:user).permit(:email, :name, :password, :password_confirmation)
  # end
end
