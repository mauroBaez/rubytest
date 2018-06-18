class PagesController < ApplicationController
    def index
        @articles = Article.all
        
        @categories = Category.all
    end
    
    def contact
        @contact = Contact.new
    end
    
    def about

    end
end
