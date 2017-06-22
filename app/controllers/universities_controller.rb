class UniversitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]
  def show
  end

  def index
  end
end
