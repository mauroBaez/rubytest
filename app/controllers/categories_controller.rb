class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @categories = Category.all
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
      @categories = Category.all
      @articles = @category.articles
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:category).permit(:title, :body, :article_ids => [])
    end
    
end
