class AddNotificationPanelReferancesToNotification < ActiveRecord::Migration[7.0]
  def change
    add_reference :notifications, :notification_panel, null: false, foreign_key: true
  end
end
