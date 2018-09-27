class PagesController < ApplicationController
    def index
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
    
end
