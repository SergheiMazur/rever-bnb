class AddPriceToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :price, :string
  end
end
