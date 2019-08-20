class Week < ActiveRecord::Base

has_many :games

  def show_games_week(chosen_week)
    Games.all.select do |game|
      Week.name == chosen_week.name
    end
  end

  def choose_game
    puts "Please select an outcome."
    selection = gets.chomp
    chosen_week.games.find do |game|
      game.id == selection.id
    end
  end








end
