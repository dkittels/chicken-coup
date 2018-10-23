class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :games, foreign_key: true
      t.references :users, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
