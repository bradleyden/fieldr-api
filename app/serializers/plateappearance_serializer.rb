class PlateappearanceSerializer < ActiveModel::Serializer
  attributes :id, :inninghalf, :inning, :batter, :pitcher, :runs, :outs, :def_error, :outcome, :game

  def game
    object.game.id
  end
end
