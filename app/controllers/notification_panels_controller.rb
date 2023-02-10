class NotificationPanelsController < ApplicationController
  def show
    @notification_panel = NotificationPanel.find_by(user_id: current_user.id)
  end
end
