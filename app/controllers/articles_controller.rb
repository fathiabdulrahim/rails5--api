class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]

  respond_to :json

  def index
    if params[:owner_name].present?
      set_owner 
      @articles = @owner.present? ? @owner.articles : []
    else
      @articles = Article.all
    end
    render json: @articles
  end

  def show
    render json: @article
  end

  def create
    @article = Article.new(article_params)
    @article.save
    render json: @article
  end

  def update
    @article.update(article_params)
    render json: @article
  end

  def destroy
    @article.destroy
    render json: @article
  end

  private
    def set_owner
      @owner = Owner.find_by(name: params[:owner_name])
    end

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:owner_id, :name, :price, :description)
    end
end
