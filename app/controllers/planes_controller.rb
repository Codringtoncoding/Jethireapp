class PlanesController < ApplicationController
  def index
  end

  def new
    @plane = Plane.new
  end

  def create
      @plane = Plane.new(plane_params)

    if @plane.save
      redirect_to plane_path(@plane)
    else
      render :new
    end
  end

  def show
  end

 def plane_params
    params.require(:plane).permit(:name)
  end

end
