class MessagesController < ApplicationController
  def index
    # binding.pry
    @message = Message.new
    @group = Group.find(params[:group_id])
    # binding.pry
    @messages = @group.messages.includes(:user)
    # @user_group = UserGroup.find(params[:user_group_id])
  end

  def create
    # binding.pry
    @group = Group.find(params[:group_id])
    @message = @group.messages.new(message_params)
    if @message.save
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
