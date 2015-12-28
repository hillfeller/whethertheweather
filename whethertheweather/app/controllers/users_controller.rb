class UsersController < ApplicationController
  before_action :authenticate_user!

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

  def following
    @followings = Relationship.following.all
  end

  def followers
    @followers = Relationship.follower.all
  end



end
