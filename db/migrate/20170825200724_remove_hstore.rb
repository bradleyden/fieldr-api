class RemoveHstore < ActiveRecord::Migration[5.0]
  def change
    change_column :games, :home, :string
    change_column :games, :away, :string
  end
end
