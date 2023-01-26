class NotificationsController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @notification = Notification.find(params[:id])
  end

  def create
    @user_to_notify = Booking.find_by(user_id: current_user.id).house.user_id
    @notification = Notification.new(notification_params)
    @notification.user_id = @user_to_notify
    @notification.save
  end

  private

  def notification_params
    params.require(:notification).permit(:content)
  end
end
