class Booking < ApplicationRecord
  belongs_to :house
  has_one :user
  has_one :chatroom

  after_create :create_chatroom

  def create_chatroom
    @chatroom = Chatroom.new(name: "Chatting withy...")
    @chatroom.booking_id = self.id
    @chatroom.host_id = Notification.find_by(house_id: self.house_id).user_id
    @chatroom.guest_id = Notification.find_by(house_id: self.house_id).customer_id
    if @chatroom.save
      Notification.find_by(house_id: self.house_id).destroy
    end
  end
end
