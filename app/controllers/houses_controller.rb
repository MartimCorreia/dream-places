class HousesController < ApplicationController

  before_action :set_house, only: [:show, :edit, :update, :destroy]

  def index

    if params[:query].present?
      @bookings = Booking.all
      sql_query = <<~SQL
        houses.country ILIKE :query
        OR houses.city ILIKE :query
        OR houses.name ILIKE :query
      SQL
      @houses = House.where(sql_query, query: "%#{params[:query]}%")
    else
      @bookings = Booking.all
      @houses = House.all
    end

  end

  def show
    @rules = @house.rules.split(",")
  end

  def new
    @house = House.new
  end

  def create

    @house = House.new(house_params)
    @house.user_id = current_user.id
    @house.booked = false
    @house.save
    redirect_to house_path(@house)
  end

  def edit
  end

  def update
    @house.update(house_params)
    redirect_to house_path(@house)
  end

  def destroy
    @house.destroy
    redirect_to root_path
  end

  private

  def house_params
    params.require(:house).permit(:name, :description, :rules, :price_per_night, :booked, :country, :city, photos: [])
  end

  def set_house
    @house = House.find(params[:id])
  end
end
