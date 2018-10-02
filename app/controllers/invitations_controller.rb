class InvitationsController < InheritedResources::Base
  def show
    @articles = Article.all
        @categories = Category.all
        @wedding = Wedding.first
        @messages = Message.all.where(:show => true)
        @album = Album.first
        @invitation = false
        if Invitation.exists?(id: params[:id])
            @invitation = Invitation.find(params[:id])
        else
            @invitation = false
        end
  end
  def update_events
    @post = Message.new()
    @post.author = "kkjkjkj"
    @post.content = "kkjkjkj"
    @post.messageboard_id = Messageboard.first.id
    @post.save
  end
  private
    def update_events
      @post = Message.new()
      @post.author = "kkjkjkj"
      @post.content = "kkjkjkj"
      @post.messageboard_id = Messageboard.first.id
      @post.save
    end
    def invitation_params
      params.require(:invitation).permit(:title, :sent, :sent_datetime)
    end
end

