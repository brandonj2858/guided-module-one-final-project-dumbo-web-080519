# The CL NFL Betting Application

Welcome to the CL NFL Betting Application taking care of all your spread betting needs.

Read ahead for detailed instructions as to how to use the application.

### Author

  Brandon James

## Description

  The CL NFL Betting Application allows you to bet on the spread for NFL games.
  First heres a quick rundown on how to read point spreads.

### How to Read Point Spreads

  Reading spreads may seem complicated at first but it's pretty straightforward.
  The first team represents the one you'd like to take.
  The second team represents the team that the first is facing.
  The operation between them tells if the first team is the favorite(-) or underdog(+).
  If the first team is the favorite then they must win by at least the number following the "-"
  If the first team is the underdog then they must lose by less than the number following the "+" or win

  Example 1: NYG -3.5 DAL
  Description: NYG will beat DAL by at least 3.5 points. The "-" shows NYG being the favorite.

  Example 2: DAL +3.5 NYG
  Description: DAL will lose by less than 3.5 points or win the game. The "+" shows DAL being the underdog.

  Example 3: MIN 0 GB
  Description: MIN will beat GB. Since the number between the teams is 0 there is no spread in points.

## Instructions

### Set Up
  1. First download the repository.
  2. Run `bundle install`.
  3. Next run `rake db:migrate` to migrate the database.
  4. Run  `rake db:seed` to get the appropriate data into the database.
  5. Lastly run `ruby bin/run.rb` to start the application.


<p class='util--hide'>View <a href='https://github.com/brandonj2858/guided-module-one-final-project-dumbo-web-080519/blob/master/LICENSE.md'>License</a></p>

<p class='util--hide'>View <a href='https://github.com/brandonj2858/guided-module-one-final-project-dumbo-web-080519/blob/master/CONTRIBUTING.md'>Contributing</a></p>
