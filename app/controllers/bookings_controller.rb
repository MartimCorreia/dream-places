class BookingsController < ApplicationController

  before_action :set_house, only: [:new, :create]

  def index
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.house_id = @house.id
    @booking.user_id = current_user.id
    @house.update(booked: true) if @booking.save == true
    @booking.save

    redirect_to root_path
  end

  def my
    @bookings = Booking.where(user_id: current_user.id)
  end

  private

  def booking_params
    params.require(:booking).permit(:number_of_nights)
  end

  def set_house
    @house = House.find(params[:house_id])
  end

end
