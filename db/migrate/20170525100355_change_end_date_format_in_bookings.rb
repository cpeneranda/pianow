class ChangeEndDateFormatInBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column(:bookings, :end_date)
    add_column(:bookings, :end_date, :date)
  end
end
