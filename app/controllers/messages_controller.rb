class MessagesController < ApplicationController
  def index
    # binding.pry
    @message = Message.new
    @group = Group.find(params[:group_id])
    # binding.pry
    @messages = @group.messages.includes(:user)

    # @messages = Message.all
  end

  def create
    @group = Group.find(params[:group_id])
    @message = @group.messages.new(message_params)
    # binding.pry
    if @message.save
      ActionCable.server.broadcast 'message_channel', content: @message
      redirect_to group_messages_path(@group)
    else
      @messages = @group.messages.includes(:user)
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

end
