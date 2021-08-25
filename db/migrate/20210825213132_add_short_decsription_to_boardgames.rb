class AddShortDecsriptionToBoardgames < ActiveRecord::Migration[6.0]
  def change
    add_column :boardgames, :desc_short, :text
    add_column :boardgames, :minplayers, :integer
    add_column :boardgames, :maxplayers, :integer
    add_column :boardgames, :playingtime, :integer
    add_column :boardgames, :minage, :integer
  end
end
