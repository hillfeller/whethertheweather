class PostsController < ApplicationController

  before_action :require_sign_in, except: :show

  def index
    @posts = Post.all
  end



  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end


  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      flash[:notice] = "Post was saved."
# #36
      redirect_to @post
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.assign_attributes(post_params)

    if @post.save
      flash[:notice] = "Post was updated."
      redirect_to @post
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])

    if @post.destroy
      flash[:notice] = "\"#{@post.title}\" was deleted successfully."
      redirect_to @post
    else
      flash[:error] = "There was an error deleting the post."
      render :show
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
