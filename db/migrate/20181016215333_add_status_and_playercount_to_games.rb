class AddStatusAndPlayercountToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :status, :integer
    add_column :games, :playercount, :integer
  end
end
