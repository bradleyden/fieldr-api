class ChangePaName < ActiveRecord::Migration[5.0]
  def change
    rename_table :pas, :plateappearances
  end
end
