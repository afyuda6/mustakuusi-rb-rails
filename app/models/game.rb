class Game < ApplicationRecord
  has_many :screenshots, foreign_key: :game_id
  has_many :game_characters, foreign_key: :game_id
  has_many :characters, through: :game_characters
end
