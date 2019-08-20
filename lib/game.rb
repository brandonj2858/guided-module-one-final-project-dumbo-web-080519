class Game < ActiveRecord::Base

belongs_to :week
has_many :bets
has_many :users, through: :bets







end
