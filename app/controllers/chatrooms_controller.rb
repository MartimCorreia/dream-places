class ChatroomsController < ApplicationController
  def show
    @chatrooms = Chatroom.all
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    render :index
  end

  def index
    @chatrooms = Chatroom.all
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
