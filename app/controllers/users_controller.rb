class UsersController < ApplicationController
  before_action :set_user, only: [:picture_update]

  def picture_update
    if !params[:user].nil? && params[:user][:picture].size <= 10485760
     @user.update_attribute(:picture, params[:user][:picture])
    else
      flash[:alert] = "Image size must be under 10MB."
    end
    redirect_to user_pages_profile_path(@user)
  end


  private

  def set_user
    @user = User.find(params[:id])
  end
end
