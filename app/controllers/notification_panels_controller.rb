class NotificationPanelsController < ApplicationController
  def show
    @notification_panel = NotificationPanel.find(params[:id])
  end
end
