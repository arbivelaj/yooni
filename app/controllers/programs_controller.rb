class ProgramsController < ApplicationController
  def show
  end

  def index
  end

  def search
    @programs = Program.search(params[:search_value])
  end
end
