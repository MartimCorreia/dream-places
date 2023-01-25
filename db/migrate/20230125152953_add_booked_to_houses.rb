class AddBookedToHouses < ActiveRecord::Migration[7.0]
  def change
    add_column :houses, :booked, :boolean
  end
end
