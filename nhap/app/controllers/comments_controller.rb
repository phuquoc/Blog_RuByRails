class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment.blog_id =  params[:blog_id]

    if comment.save
      redirect_to blog_path(params[:blog_id])
    else
      flash[:error] = "Can not create comment"
      redirect_to blog_path(params[:blog_id])
    end

  end

  private
  def comment_params
    params.require(:comment).permit(:name, :content)
  end
end
