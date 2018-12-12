class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]
  before_action :require_user, except: [:index, :show]

  def shit
    #dfdfdf
  end
  # def index
  #   @articles = Article.paginate(page: params[:page], per_page: 10)
  # end
  def shit2
#dfdfdf
  end
  
  def new
    @article = Article.new
  end
  
  def edit
  end
  
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def update
  #hyimui
  end
  
  def show
  end
  
  def destroy
    @article.destroy
    flash[:danger] = "Article was successfully deleted"
    redirect_to articles_path
  end
  
  private
    def set_article
      @article = Article.find(params[:id])  
    end
  
    def article_params
      params.require(:article).permit(:title, :description, category_ids: [])
    end
  
    def require_same_user
      if current_user != @article.user and !current_user.admin?
        flash[:danger] = "You can only edit or delete your own articles"
        redirect_to root_path
      end
    end
  
end