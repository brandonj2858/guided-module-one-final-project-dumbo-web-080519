require_relative '../config/environment'
prompt = TTY::Prompt.new

cli = Interface.new


system "clear"
cli.greeting
user_object = cli.new_or_returning
if user_object == nil
  puts "Name not found Please try again"
  user_object = cli.new_or_returning until user_object != nil
end
cli.user = user_object
system "clear"
cli.main_menu until cli.main_menu == "Close the app"
