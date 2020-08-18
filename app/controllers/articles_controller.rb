class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy] 

  def index 
    # GET / .all
    @articles = Article.all
  end

  def show
    # GET / .find
    # @article = Article.find(params[:id])
  end

  def new
    # GET / .new(attributes)
    @article = Article.new
  end

  def create
    # POST / .create(attributes)
    @article = Article.new(article_params)
    @article.save

    redirect_to articles_path
  end

  def edit
    # GET / .find
    # @article = Article.find(params[:id])
  end

  def update
    # PATCH / .update(attributes)
    # @article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to articles_path
  end

  def destroy
    # DELETE / .destroy
    # @article = Article.find(params[:id])
    @article.delete

    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
