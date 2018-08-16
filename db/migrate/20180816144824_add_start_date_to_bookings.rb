class AddStartDateToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :startdate, :date
  end
end
