class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all

  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    @location = Location.find(params[:id])

  end

  # GET /locations/new
  def new
    @location = Location.new
  end


  def create
    @location = Location.new(location_params)
    @location.user = current_user

    @location.save if current_user
    render :show

  end

  def update
    @location = Location.find(params[:id])

    @location.update_attributes(location_params)
    render :show

  end


  def destroy
    @location = Location.find(params[:id])

    @location.destroy
      redirect_to @post
    render :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:address, :latitude, :longitude)
    end
end
