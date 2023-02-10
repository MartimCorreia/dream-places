class AddUserReferencesToNotificationPanel < ActiveRecord::Migration[7.0]
  def change
    add_reference :notification_panels, :user, null: false, foreign_key: true
  end
end
