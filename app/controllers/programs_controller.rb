class ProgramsController < ApplicationController
  def show
  end

  def index
  end

  def search
    query = {}
    if params[:search_value].nil?
      @programs = Program.search_modal(params[:subject], params[:level], params[:tuition].to_i)
    else
      @programs = Program.search(params[:search_value])
    end
  end
end
