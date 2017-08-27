# frozen_string_literal: true

class Game < ApplicationRecord
  belongs_to :user
  validates :date, :home, :away, presence: true
end
