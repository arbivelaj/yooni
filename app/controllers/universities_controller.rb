class UniversitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]
  def show
  end

  def index
  end


def university_params
  params.require(:university).permit(:name, :description, photos: [])
end

end
