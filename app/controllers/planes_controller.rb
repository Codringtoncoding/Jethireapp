class PlanesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @plane = Plane.find(params[:id])
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
