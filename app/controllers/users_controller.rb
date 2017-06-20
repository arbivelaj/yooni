class UsersController < ApplicationController

 before_action :set_user, only: [:show, :update]

  def update
  end

  def index
  end



  def show
    @favourites = Favourite.where(user_id: current_user.id)
    # @fields = @favourites.map {|booking| booking.field}
    @user = current_user
  end

  private

  def set_user
  @user = User.find(params[:id])
  end

  def user_params
  params.require(:user).permit(:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :created_at, :phone_number, :updated_at, :username, :biography, :index_users_on_email, :index_users_on_reset_password_token)
  end
end
