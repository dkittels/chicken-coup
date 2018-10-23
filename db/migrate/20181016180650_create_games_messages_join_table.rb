class CreateGamesMessagesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :games, :users do |t|
      t.index :game_id
    end
  end
end
