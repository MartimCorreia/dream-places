class NotificationsController < ApplicationController

  def show
    @notification = Notification.find(params[:id])
  end

  def user_personal
    @notifications = Notification.where(user_id: current_user.id)
  end

end
