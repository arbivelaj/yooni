class FavouritesController < ApplicationController

  def create
    favourite = Favourite.new(user: current_user)
    program = Program.find(params["program_id"])
    favourite.program = program
    if favourite.save
      redirect_to program_path(program)
      flash[:notice] = "Succesfully favourited #{program.title}"
    else
      flash[:danger] = "Something went wrong"
    end
  end

  def show
  end
end
