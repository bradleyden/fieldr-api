class AddTopBotToPlateAppearances < ActiveRecord::Migration[5.0]
  def change
    add_column :plateappearances, :inninghalf, :string
  end
end
