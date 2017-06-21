class ProgramsController < ApplicationController
  def show
    @program = Program.find(params[:id])
    @review = Review.new

  end

  def index

  end

  def search
    @cities = %w(Italy Spain UK Germany Netherlands France)
    @level = %w(Master Bachelor MBA)
    @tuition = [1000, 5000, 10000]
    @subject = %w(Economics Management Mathematics Computer Finance Media Politics Actuarial Engineering Markeking Law Biology )
    @scholarship = [0, 1000, 5000, 10000]
    query = {}


    if params[:search_value].nil?
      @programs = Program.search_modal(params[:subject], params[:level], params[:tuition].to_i)
            @list = @programs.map { |p| p.university }


      @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

        marker.lat uni.latitude
        marker.lng uni.longitude
      end
    end


    if params[:search_value]
      @programs = Program.search(params[:search_value]).select do |program|
        program.university and program.university.latitude and program.university.longitude
      end

      @list = @programs.map { |p| p.university }


      @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

        marker.lat uni.latitude
        marker.lng uni.longitude
      end
    end


    if params[:location]
      @programs = Program.search_city(params[:location]).select do |program|
        program.university and program.university.latitude and program.university.longitude
      end

      @list = @programs.map { |p| p.university }


      @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

        marker.lat uni.latitude
        marker.lng uni.longitude
      end
    end

    if params[:level]
      @programs = Program.search_level(params[:level]).select do |program|
        program.university and program.university.latitude and program.university.longitude
      end

      @list = @programs.map { |p| p.university }


      @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

        marker.lat uni.latitude
        marker.lng uni.longitude
      end
    end

    if params[:tuition]
      @programs = Program.search_tuition(params[:tuition]).select do |program|
        program.university and program.university.latitude and program.university.longitude
      end

      @list = @programs.map { |p| p.university }


      @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

        marker.lat uni.latitude
        marker.lng uni.longitude
      end
    end

    if params[:scholarship]
      @programs = Program.search_scholarship(params[:scholarship]).select do |program|
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
