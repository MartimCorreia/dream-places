class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  # def create
  #   @notification = Notification.find(params[:notification_id])
  #   @chatroom = Chatroom.new(name: "Chatting with...")
  #   @chatroom.host_id = @notification.user
  #   @chatroom.guest_id = User.find(@notification.customer_id)
  #   if @chatroom.save
  #     @notification.destroy
  #   end
  #   redirect_to chatroom_path(@chatroom)
  # end
end
