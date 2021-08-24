class AddPricePerDayToBoardgames < ActiveRecord::Migration[6.0]
  def change
    add_column :boardgames, :price_per_day, :integer
  end
end
