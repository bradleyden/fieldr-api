class GameSerializer < ActiveModel::Serializer
  attributes :id, :date, :home, :away
end
