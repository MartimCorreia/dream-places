class RemoveRulesAgainFromHouses < ActiveRecord::Migration[7.0]
  def change
    remove_column :houses, :rules
  end
end
