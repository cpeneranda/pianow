class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @booking.piano = Piano.find(params[:piano_id])
    if @booking.save
      redirect_to dashboards_path
    else
      render :create
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
