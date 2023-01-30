class AddHouseReferencetoNotifications < ActiveRecord::Migration[7.0]
  def change
   add_foreign_key :notifications, :houses
  end
end
