class HousesController < ApplicationController

  before_action :set_house, only: [:show, :edit, :update, :destroy]

  def index
    @houses = House.all
  end

  def show
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
    params.require(:house).permit(:name, :description, :rules, :price_per_night, :booked)
  end

  def set_house
    @house = House.find(params[:id])
  end
end
