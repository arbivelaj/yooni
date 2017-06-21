class FavouritesController < ApplicationController
  def create
  @user = current_user
  @program = Program.find(params[:program_id])
  @favourite = Favourite.new( user:current_user, program: @program)
 # if @favourite.save
  # redirect_to favourite_confirmation_path(@favourite)
  end
  # @favourite.save
  def show
  end
end
