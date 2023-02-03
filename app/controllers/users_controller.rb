class UsersController < ApplicationController
  before_action :set_user, only: [:picture_update]

  def picture_update

    @user.update_attribute(:picture, params[:user][:picture]) if !params[:user].nil?
   
    redirect_to user_pages_profile_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
