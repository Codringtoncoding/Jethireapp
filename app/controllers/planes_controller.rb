class PlanesController < ApplicationController
  def index
    @planes = Plane.all
  end

  def new
  end

  def create
  end

  def show

  end
  private

  def plane_params
    # only keep what we want from the params
    params.require(:plane).permit(:name)
  end
end
