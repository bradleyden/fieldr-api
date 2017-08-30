class Plateappearance < ApplicationRecord
  belongs_to :game
  validates :inninghalf, :inning, :batter, :pitcher, :outcome, :runs, :outs, :def_error, presence: true
end
