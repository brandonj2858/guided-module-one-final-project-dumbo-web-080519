class User < ActiveRecord::Base

has_many :bets
has_many :games, through: :bets


  def self.handle_returning_user
    puts "What is your First name Last name?"
    name = gets.chomp
    selected_user = User.find_by(name: name)
  end

  def self.handle_new_user
    puts "Welcome New User! Heres a quick rundown on how to read point spreads."
    puts "Example 1: 'GB -3.5 OAK' means GB must beat OAK by more than 3.5 points"
    puts "Example 2: 'TB +4 NE' means TB must lose by less than 4 points or win."
    puts "What is your First name Last name?"
    name = gets.chomp
    User.create(name: name)
  end

  def list_bets
    user_bets = self.bets
    if user_bets.empty?
      puts "You do not have any bets placed."
    else
      user_bets.each do |bet|
        puts "You have bet #{bet.amount} on #{bet.game.name}."
      end
    end
    puts "\n"
  end

  def edit_bet_amount
    user_bet = self.bets.map do |bet|
      {(bet.game.name) => bet}
    end
    if user_bet.empty?
      puts "You have no bets"
    else
      edit_bet = TTY::Prompt.new.select("Choose a bet to edit", user_bet)
      puts "How much would you like to bet?"
      new_amount = gets.chomp
      #binding.pry
      edit_bet.update(amount: new_amount)
      puts "Your bet has been updated to #{edit_bet.amount}"
    end
    puts "\n"
  end

  def create_new_bet
    selected_week = TTY::Prompt.new.select("Please select a week of games to view") do |menu|
      menu.choice "Week 1"
      menu.choice "Week 2"
      menu.choice "Week 3"
    end
    found_week = Week.find_by(name: selected_week)
    games_for_week = found_week.games.map do |game|
      game.name
    end
    chosen_game = TTY::Prompt.new.select("Which bet would you like to take?", games_for_week)
    found_game = Game.find_by(name: chosen_game)
    puts "How much would you like to bet?"
    amount_bet = gets.chomp
    new_bet = Bet.create(user_id: self.id, game_id: found_game.id, amount: amount_bet)
    puts "Congratulations your bet has been created! Your bet I.D is #{new_bet.id}"
    puts "\n"
  end

  def delete_bet
    user_bets = self.bets.map do |bet|
      {(bet.game.name) => bet.id}
    end
      if user_bets.empty?
        puts "How can you delete bets that you dont have?"
      else
        selection = TTY::Prompt.new.select("Which bet would you like to delete?", user_bets)
        #binding.pry
        self.bets.delete(selection)
        puts "Your bet has been deleted!"
      end
      puts "\n"
    end


end
