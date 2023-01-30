class AddRulesAgainToHouses < ActiveRecord::Migration[7.0]
  def change
    add_column :houses, :rules, :string
  end
end
