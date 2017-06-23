class ProgramsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search]

  def show

    @review = Review.new

    if params[:flash]
      favourite = Favourite.create(user: current_user, program_id: params[:id])
    end

    if params[:notice]
      application = Application.create(user: current_user, program_id: params[:id])
    end
    @program = Program.find(params[:id])
  end

  def index

  end



  def search
    @cities = %w(Italy Spain UK Germany Netherlands France)
    @level = %w(Master Bachelor MBA)
    @tuition = [1000, 5000, 10000, 50000]
    @subject = %w(Economics Management Mathematics Computer Finance Media Politics Actuarial Engineering Markeking Law Biology )
    @scholarship = [0, 1000, 5000, 10000]
    query = {}

    if params[:search_value].nil?
      # Run the modal search
      @pippo = Program.search_modal(params[:subject], params[:level], params[:location], params[:tuition].to_i, params[:scholarship].to_i)
      @list = @pippo.map { |p| p.university }

      @hash = Gmaps4rails.build_markers(@list) do |uni, marker|
        marker.lat uni.latitude
        marker.lng uni.longitude
        marker.infowindow render_to_string(partial: "/universities/mapbox", locals: { uni: uni })
      end

    elsif params[:search_value]
      # Run classic search with value only
      @pippo = Program.search(params[:search_value]).select do |program|
        program.university and program.university.latitude and program.university.longitude
      end

      @list = @pippo.map { |p| p.university }

      @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

        marker.lat uni.latitude
        marker.lng uni.longitude
        marker.infowindow render_to_string(partial: "/universities/mapbox", locals: { uni: uni })

      end

    else
      render :home
    end






  #   if params[:location] != ""
  #     @pippo = Program.search_city(params[:location]).select do |program|
  #       program.university and program.university.latitude and program.university.longitude
  #     end

  #     @list = @pippo.map { |p| p.university }


  #     @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

  #       marker.lat uni.latitude
  #       marker.lng uni.longitude
  #     end
  #   end

  #   if params[:level] != ""

  #     @pippo = Program.search_level(params[:level]).select do |program|
  #       program.university and program.university.latitude and program.university.longitude
  #     end

  #     @list = @pippo.map { |p| p.university }


  #     @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

  #       marker.lat uni.latitude
  #       marker.lng uni.longitude
  #     end
  #   end

  #   if params[:tuition] != ""
  #     @pippo = Program.search_tuition(params[:tuition]).select do |program|
  #       program.university and program.university.latitude and program.university.longitude
  #     end

  #     @list = @pippo.map { |p| p.university }


  #     @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

  #       marker.lat uni.latitude
  #       marker.lng uni.longitude
  #     end
  #   end

  #   if params[:scholarship] != ""
  #     @pippo = Program.search_scholarship(params[:scholarship]).select do |program|
  #       program.university and program.university.latitude and program.university.longitude
  #     end

  #     @list = @pippo.map { |p| p.university }


  #     @hash = Gmaps4rails.build_markers(@list) do |uni, marker|

  #       marker.lat uni.latitude
  #       marker.lng uni.longitude
  #     end
  #   end
end
end
