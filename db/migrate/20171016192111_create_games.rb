class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :score, default: 0
      t.references :deck, foreign_key: true

      t.timestamps
    end
  end
end
