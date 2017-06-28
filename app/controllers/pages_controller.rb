class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home


    @unis = []
    bocco = University.all.select{|x| x.name == "Università Bocconi"}
    @unis << bocco.last
    he = University.all.select{|x| x.name == "HEC Paris"}
    @unis << he.last
    am = University.all.select{|x| x.name == "University of Amsterdam"}
    @unis << am.last
    ber = University.all.select{|x| x.name == "Freie Universität Berlin"}
    @unis << ber.last

    @unis = @unis.select { |i| i }


    @hash = Gmaps4rails.build_markers(@unis) do |uni, marker|

      marker.lat uni.latitude
      marker.lng uni.longitude
      # marker.infowindow render_to_string(partial: "/universities/mapbox", locals: { uni: uni })

    end
  end
end
