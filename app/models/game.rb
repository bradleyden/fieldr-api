# frozen_string_literal: true

class Game < ApplicationRecord
  belongs_to :user
  has_many :plateappearances
  validates :date, :home, :away, presence: true
end
