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
    user_bets = self.bets.map do |bet|
      bet
    end
    puts "#{user_bets}"
  end

  def edit_bet_amount
    user_bet = self.bets.map do |bet|
      bet
    end
    edit_bet = TTY::Prompt.new.select("Choose a bet to edit", user_bet)
    puts "How much would you like to bet?"
    new_amount = gets.chomp
    edit_bet.amount = new_amount
  end






end
