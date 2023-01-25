class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :number_of_nights
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
