class CreateBoardgames < ActiveRecord::Migration[6.0]
  def change
    create_table :boardgames do |t|
      t.string :title
      t.text :description
      t.text :price_per_day

      t.timestamps
    end
  end
end
