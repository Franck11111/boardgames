class AddAddressToBoardgames < ActiveRecord::Migration[6.0]
  def change
    add_column :boardgames, :address, :string
  end
end
