class CreatePas < ActiveRecord::Migration[5.0]
  def change
    create_table :pas do |t|
      t.integer :inning
      t.integer :batter
      t.integer :pitcher
      t.integer :runs
      t.integer :outs
      t.integer :errors
      t.string :result
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
