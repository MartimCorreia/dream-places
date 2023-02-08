class AddHostAndGuestReferencesToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :host, foreign_key: { to_table: :users }
    add_reference :chatrooms, :guest, foreign_key: { to_table: :users }
  end
end
