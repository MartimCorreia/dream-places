class NotificationsController < ApplicationController
  before_action :set_house, only: [:new, :create]

  def show
    @notification = Notification.find(params[:id])
  end

  def new
    @notification = Notification.new
  end


  def create
    @notification = Notification.new(notification_params)
    @notification.user_id = @house.user_id
    @notification.house_id = @house.id
    @notification.customer_id = current_user.id
    @notification.save
    redirect_to root_path
  end

  def user_personal
    @notifications = Notification.where(user_id: current_user.id)

    @booking = Booking.new(booking_params)
    @booking.save

  end

  private

  def booking_params
    params.permit(:number_of_nights, :user_id)
  end

  def set_house
    @house = House.find(params[:house_id])
  end

  def notification_params
    params.require(:notification).permit(:content, :nights)
  end

end
