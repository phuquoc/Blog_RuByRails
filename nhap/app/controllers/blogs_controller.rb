class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end
  def create
    article = Blog.create(article_params)
    if(article.nil?)
      render 'new'
    else
      redirect_to blogs_path
    end
  end

  def new
    @article = Blog.new
  end
  def show
    @article = Blog.find(params[:id])
    @comment = Comment.new
  end
  def edit
    @article = Blog.find(params[:id])
  end

  def update
    article = Blog.find(params[:id])
  #  article.title = params[:blog][:title]
  #  article.content = params[:blog][:content]
    if(article.update(article_params).present?)
      redirect_to blog_path(params[:id])
    else
      render 'edit'
    end
  end

  def destroy
    @article = Blog.find(params[:id])
    @article.destroy
  redirect_to blogs_path

  end



  def article_params
    params.require(:blog).permit(:title, :content)
  end

end
