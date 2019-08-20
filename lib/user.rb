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

  def list_bets
    puts "These are the bets for #{self.name}"
    self.bets.map do |bet|
      bet
    end
  end






end
