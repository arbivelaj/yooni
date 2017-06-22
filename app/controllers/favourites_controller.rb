class FavouritesController < ApplicationController

  def create
    @user = current_user

    redirect_to user_profile(@user)
  end


  def show
  end
end
