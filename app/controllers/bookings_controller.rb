class BookingsController < ApplicationController
  def index
    @bookings = Bookings.all
  end

  def new

    @booking = Booking.new
    @plane = Plane.find(params[:plane_id])
  end

  def create
    @plane = Plane.find(params[:plane_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.plane = @plane
    if @booking.save
      redirect_to booking_path(@booking), notice: "A  confirmation email will be sent to #{current_user.email}"
    else
      render :new
    end

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def dashboard
    @bookings = Booking.where(user: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:plane_id, :user_id, :date, :time)
  end
end
