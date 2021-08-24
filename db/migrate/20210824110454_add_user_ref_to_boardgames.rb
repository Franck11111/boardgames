class AddUserRefToBoardgames < ActiveRecord::Migration[6.0]
  def change
    add_reference :boardgames, :user, null: false, foreign_key: true
  end
end
