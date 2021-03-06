class PostsController < ApplicationController

  before_action :require_sign_in, except: :show

  def index
    @posts = Post.order(:created_at)
  end

  def show
    @post = Post.find(params[:id])
  end

  def show_user
    @post.user.user_name = User.find(params[:user_id])
    if @post.user.user_name.save
      render :showuser
    end
  end


  def new
    @post = Post.new

  end


  def create
    @post = current_user.posts.new(post_params)

    if @post.save

      flash[:notice] = "Post was saved."
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
    @label = Label.find_by(name: params[:label].downcase)
    @post.label = @label if @label

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
