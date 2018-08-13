class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :user_id
      t.string :game_id
      t.string :status
      t.string :place

      t.timestamps
    end
  end
end
