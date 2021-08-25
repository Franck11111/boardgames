class AddCoverToTablename < ActiveRecord::Migration[6.0]
  def change
    add_column :boardgames, :cover_url, :string
  end
end
