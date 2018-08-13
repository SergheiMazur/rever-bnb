class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :game
      t.string :status
      t.string :place

      t.timestamps
    end
  end
end
