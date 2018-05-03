class Player < ApplicationRecord
  has_many :dots
  has_and_belongs_to_many :matches
end
