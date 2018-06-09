class PagesController < ApplicationController
    def index
        @articles = Article.paginate(page: params[:page], per_page: 2)
    end
    
    def contact
        @contact = Contact.new
    end
    
    def about

    end
end
