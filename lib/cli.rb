class Interface
attr_accessor :prompt, :user

  def initialize
    @prompt = TTY::Prompt.new
  end


  def greeting
    puts "Hello welcome to the NFL betting app. Taking care of all your betting needs"
  end

  def new_or_returning
    answer = self.prompt.select("Are you a new or returning user?") do |menu|
      menu.choice "New User", -> {User.handle_new_user}
      menu.choice "Returning User", -> {User.handle_returning_user}
    end
  end


  def main_menu
    user.reload
    puts "Welcome #{self.user.name}!"
    self.prompt.select("What would you like to do today?") do |menu|
      menu.choice "See all bets", -> {self.user.list_bets}
      menu.choice "Edit bet amount", -> {self.user.edit_bet_amount}
      menu.choice "Create new bet", -> {self.user.create_new_bet}
      menu.choice "Delete a bet", -> {self.user.delete_bet}
      menu.choice "Close the app", -> {exit}
    end
  end



end
