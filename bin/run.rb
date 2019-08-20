require_relative '../config/environment'
prompt = TTY::Prompt.new

cli = Interface.new

cli.greeting
user_object = cli.new_or_returning
cli.user = user_object
# cli.main_menu
cli.main_menu until cli.main_menu == "Close the app"
