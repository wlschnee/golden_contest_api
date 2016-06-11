class User < ApplicationRecord
  has_many :guesses
  has_many :factoids
  has_many :games, through: :guesses
end
