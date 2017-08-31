class PlateappearanceSerializer < ActiveModel::Serializer
  attributes :id, :inninghalf, :inning, :batter, :pitcher, :runs, :outs, :def_error, :outcome, :firstbase, :secondbase, :thirdbase, :homebase, :firstbasemandefense, :secondbasemandefense, :thirdbasemandefense, :shortstopdefense, :leftfielddefense, :centerfielddefense, :rightfielddefense, :catcherdefense, :pitcherdefense, :homer, :game

  def game
    object.game.id
  end
end
