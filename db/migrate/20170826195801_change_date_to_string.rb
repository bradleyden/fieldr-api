class ChangeDateToString < ActiveRecord::Migration[5.0]
  def change
    change_column :games, :date, :string
  end
end
