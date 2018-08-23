class PagesController < ApplicationController
    def index
        @articles = Article.all
        @categories = Category.all
        @wedding = Wedding.first
        @messages = Message.all.where(:show => true)
        @album = Album.first
    
    end
    
    def contact
        @contact = Contact.new
    end
    
    def about

    end
end
