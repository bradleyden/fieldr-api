class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.date :date
      t.hstore :home_team
      t.hstore :away_team
      t.references :user

      t.timestamps
    end
  end
end
