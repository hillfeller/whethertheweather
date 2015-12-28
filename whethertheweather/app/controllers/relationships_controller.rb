class RelationshipsController < ApplicationController

  def create
    @relationship = Relationship.new(follower: current_user, followed_id: params[:user_id])
    if @relationship.save
      flash[:notice] = "Followed."
    else
      flash[:notice] = "User could not be followed."
    end
    redirect_to :back
  end

  def destroy
    @relationship = Relationship.find(params[:id])
    if @relationship.destroy
      flash[:notice] = "Unfollowed."
    else
      flash[:notice] = "User unfollowed."
    end
    redirect_to :back
  end

  def show
    @relationship = Relationship.all
  end

end
