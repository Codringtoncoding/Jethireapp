class PlanesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @plane = plane.find(params[:id])
  end
  private

  def plane_params
    # only keep what we want from the params
    params.require(:plane).permit(:name)
  end
end
