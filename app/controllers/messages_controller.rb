class MessagesController < InheritedResources::Base

  def create
    @message = Message.new(params[:message].permit(:author, :content, :show))
    @message.messageboard_id = Messageboard.first.id
    
    if @message.save
      redirect_to(root_path, :notice => 'Muchas gracias! El mensaje se envió correctamente. Se agregará cuando los Novios lo hayan visto.')
    else
      redirect_to(root_path, :notice => 'Hubo un problema con el envío del Mensaje.')
    end

  end
  private

    def message_params
      params.require(:message).permit(:author, :content, :show)
    end
end

