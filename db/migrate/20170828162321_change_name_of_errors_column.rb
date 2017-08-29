class ChangeNameOfErrorsColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :pas, :errors, :def_error
  end
end
