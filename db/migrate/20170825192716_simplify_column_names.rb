class SimplifyColumnNames < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :games, :home_team, :home
    rename_column :games, :away_team, :away
  end
end
