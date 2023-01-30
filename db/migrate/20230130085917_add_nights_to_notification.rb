class AddNightsToNotification < ActiveRecord::Migration[7.0]
  def change
    add_column :notifications, :nights, :integer
  end
end
