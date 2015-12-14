class LikesController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized


  def create
    obj = nil
    if params[:post_id].present?
      obj = Post.find(params[:post_id])
    else
      obj = Comment.find(params[:comment_id])
    end

    @like = current_user.likes.build(likeable: obj)

    authorize @like
    if @like.save
      flash[:notice] = "comment liked."
    else
      flash[:error] = "Like failed."
    end

    redirect_to 'post/index'
  end


  def destroy

    @like = current_user.likes.find(params[:id])

    authorize @like

    if @like.destroy
      flash[:notice] = "comment unliked."
    else
      flash[:error] = "Unlike failed."
    end
      redirect_to 'post/index'
  end
end
