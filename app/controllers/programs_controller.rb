class ProgramsController < ApplicationController
  def show

  end

  def index

  end

  def search


    if params[:search_value].nil?
      @programs = Program.search_modal(params[:subject], params[:level], params[:tuition].to_i)
            @list = @programs.map { |p| p.university }


      @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

        marker.lat uni.latitude
        marker.lng uni.longitude
      end

    else
      @programs = Program.search(params[:search_value]).select do |program|
        program.university and program.university.latitude and program.university.longitude
      end

      @list = @programs.map { |p| p.university }


      @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

        marker.lat uni.latitude
        marker.lng uni.longitude
      end
    end
  end
end
