
class CommentsController < ApplicationController
  before_action :set_post

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    if comment.save
      flash[:notice] = "Comment updated successfully."
      redirect_to [@post]
    else
      flash[:error] = "Comment failed to save update."
      redirect_to [@post]
    end
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:notice] = "Comment saved successfully."
      redirect_to [@post]
    else
      flash[:error] = "Comment failed to save."
      redirect_to [@post]
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

    if @comment.destroy
      flash[:notice] = "Comment was deleted."
      redirect_to [@post]
    else
      flash[:error] = "Comment couldn't be deleted. Try again."
      redirect_to [@post]
    end
  end




  private

# #14
  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

end
