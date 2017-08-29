class GameSerializer < ActiveModel::Serializer
  attributes :id, :date, :home_team, :away_team
end
