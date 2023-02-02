class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @bookings = Booking.where(user_id: current_user.id)
  end

  def profile
    @user = User.find(params[:user_id])
  end
end
