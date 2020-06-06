class PostsController < ApplicationController
  def show
    @comment=Comment.new
    @post=Post.find(params[:id])
  end
end
