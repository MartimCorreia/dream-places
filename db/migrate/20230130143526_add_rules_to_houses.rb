class AddRulesToHouses < ActiveRecord::Migration[7.0]
  def change
    add_column :houses, :rules, :text, array: true, default: []
  end
end
