class GameSerializer < ActiveModel::Serializer
  attributes :id, :date, :home, :away, :away_runs, :home_runs,
  :away_hits, :home_hits, :away_errors, :home_errors, :total_innings, :top_one,
  :bot_one, :top_two, :bot_two, :top_three, :bot_three, :top_four, :bot_four,
  :top_five, :bot_five, :top_six, :bot_six, :top_seven, :bot_seven, :top_eight,
  :bot_eight, :top_nine, :bot_nine, :top_ten, :bot_ten, :top_eleven, :bot_eleven,
  :top_twelve, :bot_twelve, :top_thirteen, :bot_thirteen, :top_fourteen, :bot_fourteen,
  :top_fifteen, :bot_fifteen, :top_sixteen, :bot_sixteen, :top_seventeen, :bot_seventeen,
  :top_eighteen, :bot_eighteen, :plateappearances

  def plateappearances
    object.plateappearances.pluck(:id)
  end
end
