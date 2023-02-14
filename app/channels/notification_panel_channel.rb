class NotificationPanelChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    notification_panel = NotificationPanel.find(params[:id])
    stream_for notification_panel
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
