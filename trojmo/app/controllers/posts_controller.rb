class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def create
    @post = Post.create(post_params)
    redirect_to :back
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end

