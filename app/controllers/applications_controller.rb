class ApplicationsController < ApplicationController
  def create
    @user = current_user
    @program = Program.find(params[:program_id])
    @application = Application.new
    if @application.save
      redirect_to user_profile(@user)
    end
  end

  def show
  end

  def index
  end
end
