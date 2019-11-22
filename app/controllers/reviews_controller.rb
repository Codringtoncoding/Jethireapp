class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @plane = Plane.find(params[:plane_id])
    @review = Review.new(review_params)
    @review.plane = @plane
    if @review.save
      redirect_to plane_path(@plane)
    else
      redirect_to plane_path(@plane)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
