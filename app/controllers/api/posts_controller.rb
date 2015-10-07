class Api::PostsController < ApplicationController
  respond_to :json
  before_action :authenticate_token!, only: :create

  def index
    @posts = Post.all
    respond_with @posts
  end

  def create
    @post = @api_author.posts.create post_params
    respond_with @post
  end

  private

  def post_params
    params.require(:post).permit :title, :body
  end
end
