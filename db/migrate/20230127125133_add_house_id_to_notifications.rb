class AddHouseIdToNotifications < ActiveRecord::Migration[7.0]
  def change
    add_column :notifications, :house_id, :integer
  end
end
