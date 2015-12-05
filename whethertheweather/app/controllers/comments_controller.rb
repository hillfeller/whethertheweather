
class CommentsController < ApplicationController
  before_action :require_sign_in
  before_action :authorize_user, only: [:destroy]

  def create
# #11
    @post = Post.find(params[:post_id])
    comment = @post.comments.new(comment_params)
    comment.user = current_user

    if comment.save
      flash[:notice] = "Comment saved successfully."
      redirect_to [@post]
    else
      flash[:error] = "Comment failed to save."
      redirect_to [@post]
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    comment = @post.comments.find(params[:id])

    if comment.destroy
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

  def authorize_user
    comment = Comment.find(params[:id])
    unless current_user == comment.user
      flash[:error] = "You do not have permission to delete this comment."
      redirect_to [comment.post, comment.post]
    end
  end

end
