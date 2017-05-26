class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @booking.piano = Piano.find(params[:piano_id])
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :create
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
