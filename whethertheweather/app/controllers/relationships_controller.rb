class RelationshipsController < ApplicationController

  def create
    @relationship = Relationship.new(follower: current_user, followed_id: params[:user_id])
    if @relationship.save
      # flash good
    else
      #flash bad
    end
    redirect_to :back
  end

  def destroy
    @relationship = Relationship.find(params[:id])
    if @relationship.destroy
      # flash good
    else
      #flash bad
    end
    redirect_to :back

  end

  def show
    @relationship = Relationship.all
  end

end
