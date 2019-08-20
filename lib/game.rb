class Game < ActiveRecord::Base

belongs_to :weeks
has_many :bets
has_many :users, through: :bets






end
