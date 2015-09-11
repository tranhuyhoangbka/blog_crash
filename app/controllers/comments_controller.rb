class CommentsController < ApplicationController
  before_action :load_post

  def create
    @comment = @post.comments.build comment_params
    if @comment.save
      flash[:success] = "Comment is created!"
      redirect_to @post
    else
      render "posts/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit :author, :body
  end

  def load_post
    @post = Post.find params[:post_id]
  end
end
