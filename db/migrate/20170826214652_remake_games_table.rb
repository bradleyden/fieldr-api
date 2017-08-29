class RemakeGamesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :date, null: false
      t.string :home, null: false
      t.string :away, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
