class FixMessagesColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :games_id, :game_id
    rename_column :messages, :users_id, :user_id
  end
end
