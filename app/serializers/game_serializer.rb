class GameSerializer < ActiveModel::Serializer
  attributes :id, :date, :home, :away, :user, :plateappearances

  def plateappearances
    object.plateappearances.pluck(:id)
  end
end
