class Game < ApplicationRecord
  has_many :guesses
  has_many :users, through: :guesses
  has_many :factoids
end
