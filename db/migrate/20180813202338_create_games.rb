class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :rating
      t.string :description
      t.references :user

      t.timestamps
    end
  end
end
