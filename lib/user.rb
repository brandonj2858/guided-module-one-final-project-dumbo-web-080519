class User < ActiveRecord::Base

has_many :bets
has_many :games, through: :bets


  def self.handle_returning_user
    puts "What is your First name Last name?"
    name = gets.chomp
    User.find_by(name: name)
  end

  def self.handle_new_user
    puts "What is your First name Last name?"
    name = gets.chomp
    User.create(name: name)
  end






end
