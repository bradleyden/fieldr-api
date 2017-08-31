class AddBasePlayerArraysToPlateappearances < ActiveRecord::Migration[5.0]
  def change
    add_column :plateappearances, :firstbase, :boolean
    add_column :plateappearances, :secondbase, :boolean
    add_column :plateappearances, :thirdbase, :boolean
    add_column :plateappearances, :homebase, :boolean
    add_column :plateappearances, :firstbasemandefense, :boolean
    add_column :plateappearances, :secondbasemandefense, :boolean
    add_column :plateappearances, :thirdbasemandefense, :boolean
    add_column :plateappearances, :shortstopdefense, :boolean
    add_column :plateappearances, :leftfielddefense, :boolean
    add_column :plateappearances, :centerfielddefense, :boolean
    add_column :plateappearances, :rightfielddefense, :boolean
    add_column :plateappearances, :catcherdefense, :boolean
    add_column :plateappearances, :pitcherdefense, :boolean
    add_column :plateappearances, :homer, :boolean
  end
end
