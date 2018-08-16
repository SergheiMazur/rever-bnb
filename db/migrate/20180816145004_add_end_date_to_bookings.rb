class AddEndDateToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :enddate, :date
  end
end
