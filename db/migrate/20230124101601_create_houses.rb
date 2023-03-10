class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :description
      t.string :rules
      t.float :price_per_night
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
