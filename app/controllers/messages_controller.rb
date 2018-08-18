class MessagesController < InheritedResources::Base

  def create
   @message = Message.new(params[:message].permit(:author, :content, :show))
    @message.messageboard_id = Messageboard.first.id
    @message.save
    redirect_to(root_path, :notice => 'Muchas gracias! El mensaje se envió correctamente. Se agregará cuando los Novios lo hayan visto.')

  end
  private

    def message_params
      params.require(:message).permit(:author, :content, :show)
    end
end

