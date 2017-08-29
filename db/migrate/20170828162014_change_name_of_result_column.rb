class ChangeNameOfResultColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :pas, :result, :outcome
  end
end
