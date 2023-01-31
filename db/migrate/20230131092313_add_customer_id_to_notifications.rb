class AddCustomerIdToNotifications < ActiveRecord::Migration[7.0]
  def change
    add_column :notifications, :customer_id, :integer
  end
end
