class PlanesController < ApplicationController
  def index
    @planes = Plane.all
  end

  def new
    @plane = Plane.new
  end

  def create
    @plane = Plane.new(plane_params)

    if @plane.save
      redirect_to plane_path(@plane)
    else
      raise
      render :new
    end
  end

  def show
    @plane = Plane.find(params[:id])
  end

  private

  def plane_params
    # only keep what we want from the params
    params.require(:plane).permit(:name)
  end
end
