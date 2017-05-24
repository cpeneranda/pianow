class DashboardsController < ApplicationController
  def dashboard
    @user = current_user
    @pianos_with_bookings = Piano.where(user_id: current_user.id).includes(:bookings)
    # @booking_as_owner = Booking.where(piano: @user.piano)
  end
end

