class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @plane = Plane.find(params[:plane_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.plane = @plane
    if @review.save
      redirect_to plane_path(@plane)
    else
      redirect_to plane_path(@plane)
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to plane_path(@review.plane)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
