class BookingsController < ApplicationController

  before_action :set_house, only: [:new, :create]

  def index
  end

  def new
    @booking = Booking.new
  end

  def create
    @notification = Notification.find_by(house_id: params[:house_id])
    @booking = Booking.new
    @booking.house_id = @house.id
    @booking.user_id = @notification.customer_id
    @booking.number_of_nights = @notification.nights
    if @booking.save
      @house.update(booked: true)
      @notification.destroy
    end


    redirect_to root_path
  end

  def my
    @bookings = Booking.where(user_id: current_user.id)
  end

  private

  # def booking_params
  #   params.require(:booking).permit(:number_of_nights)
  # end

  # def notification_params
  #   params.require(:notification).permit(:content)
  # end

  def set_house
    @house = House.find(params[:house_id])
  end

end
