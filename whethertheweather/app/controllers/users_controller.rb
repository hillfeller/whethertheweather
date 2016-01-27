class UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :logged_in_user, only: [:index, :edit, :update, :destroy,
  #                                        :following, :followers]
  def show
    @user = User.find(params[:id]) if params[:id].present? && params[:id] != "show"
    unless @user
      @user = current_user
    end

    client = YahooWeather::Client.new
    @location = 'New York'
    if @user.locations.any?
      @location = @user.locations.first.address
    end


  end

  def show_user
    @user = @post.user.user_name
    if @post.user.user_name
      render post.user.show
    end
  end

  # def following
  #   @followings = Relationship.following.all
  # end
  #
  # def followers
  #   @followers = Relationship.followers.all
  # end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end

end
