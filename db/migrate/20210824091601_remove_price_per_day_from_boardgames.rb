class RemovePricePerDayFromBoardgames < ActiveRecord::Migration[6.0]
  def change
    remove_column :boardgames, :price_per_day, :text
  end
end
