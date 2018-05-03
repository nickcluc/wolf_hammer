class Match < ApplicationRecord
  has_and_belongs_to_many :players, before_add: :validate_player_limit
  has_many :dots, through: :players

  MAX_NUMBER_OF_PLAYERS = 4

  def total_dots
    dots.count
  end

  class TooManyPlayers < StandardError; end

  private

  def validate_player_limit(player)
    if players.size >= MAX_NUMBER_OF_PLAYERS
      errors.add(:players, "can't be greater than #{MAX_NUMBER_OF_PLAYERS}")
      raise Match::TooManyPlayers, "Cannot have more than #{MAX_NUMBER_OF_PLAYERS} players in a match"
    end
  end
end
