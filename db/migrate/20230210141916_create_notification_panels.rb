class CreateNotificationPanels < ActiveRecord::Migration[7.0]
  def change
    create_table :notification_panels do |t|

      t.timestamps
    end
  end
end
