class AilmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @ailment = Ailment.new
    @ailments = current_user.ailments
  end

  def show
    @ailment = Ailment.find(params[:id])
  end

  def new
    @ailment = Ailment.new
  end

  def edit
    @ailment = Ailment.find(params[:id])
  end

  def create
    @ailment = current_user.ailments.new(ailment_params)
    if @ailment.save
      flash[:notice]="Ailment has been added."
      redirect_to ailments_path
    else
      flash[:notice]="Ailment could not be saved."
      redirect_to :back
    end
  end

  def update
    @ailment = Post.find(params[:id])
    @ailment.assign_attributes(ailment_params)

    if @ailment.save
      flash[:notice] = "Ailment was updated."
      redirect_to @ailment
    else
      flash[:error] = "There was an error saving the ailment. Please try again."
      render :edit
    end
  end

  def destroy
    @ailment = Ailment.find(params[:id])

    if @ailment.destroy
      flash[:notice] = "\"#{@ailment.description}\" was deleted successfully."
      redirect_to @ailment
    else
      flash[:error] = "There was an error deleting the ailment."
      render :create
    end
  end

private
  def ailment_params
    params.require(:ailment).permit(:description)
  end
end
