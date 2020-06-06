class CommentsController < ApplicationController
  before_action :authorize
  
  def create

    @comment=Comment.new(comment_params)
    @comment.user=current_user
    @post=Post.find(params[:post_id])
    @comment.post=@post
    if @comment.save
      @current_comment=@comment
      respond_to do |format|
        format.html {redirect_to @post,notice: "Comment added"}
        format.js
      end
    else
      redirect_to @post,alert: "Comment not saved!"
    end
  end
  
  protected
  
  def comment_params
    params.require(:comment).permit(:body,:post_id,:user_id)
  end
  
  def authorize
      redirect_to login_path,alert: "You must be logged in to comment!" if !logged_in?
  end
end
