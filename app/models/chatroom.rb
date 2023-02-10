class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :host, class_name: "User", foreign_key: "host_id"
  belongs_to :guest, class_name: "User", foreign_key: "guest_id"
  belongs_to :booking
end
