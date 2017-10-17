class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :question
      t.text :answer
      t.references :deck, foreign_key: true

      t.timestamps
    end
  end
end
