class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @commentaires = Commentaire.all
  end

  def show
    @articles = Article.find(params[:id])

  end

  def new
    @article = Article.new
    @commentaire = Commentaire.new
  end

  def create_commentaire
    @commentaire = @article.commentaires.build(article_params)
    @commentaire.save
    redirect_to "/articles/:id"
  end

  def article_params
    params.require(:article).permit(contenu)
  end


end
