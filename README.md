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


![party](https://media.giphy.com/media/l0MYt5jPR6QX5pnqM/giphy.gif)
## Next Steps
  How can we improve on our CLI app to have a motorcycle version and eventually a cadillac convertible version? Lots of ways!
  * Format the output of train lines to be less bland. Perhaps the lines could be separated with commas, or interpolated to read 'A line'.
  * Look for a <a href="http://web.mta.info/developers/data/nyct/subway/StationEntrances.csv">.csv file</a> or API that we can use to seed our database with lots and lots more data. How could you seed a database with rows from a csv file or with JSON data from an API?
  * Find a way for our program to not break if a user inputs a station name IN ALL CAPS, or if their cat walks over the keyboard and enters "sfudihdsuifhsidu."
  * Build out full CRUD functionality for one of our models from the command line.
  * Allow the user to do multiple searches without having to run the app each time. What if they want to seach fifty different stations and then exit the app midway through a search?
  * Add functionality using our existing data. In the console, we can find all the stations associated with a train line. How can we build that into our interface?
  * Once a user choses a train line, open an mta web page corresponding with their selected line in the user's browser.
  * Use a gem jazz up the look of our app with <a href="https://github.com/miketierney/artii">ascii text</a> or <a href="https://rubygems.org/gems/colorize/versions/0.8.1">colors</a>.

## Final Steps
* Prepare a demo video describing how a user would interact with your working project.
    * The video should:
      * Have an overview of your project.(2 minutes max)
* Prepare a presentation to follow your video.(3 minutes max)      
    * Your presentation should:  
      * Describe something you struggled to build, and show us how you ultimately implemented it in your code.  
      * Discuss 3 things you learned in the process of working on this project.
      * Address, if anything, what you would change or add to what you have today?
      * Present any code you would like to highlight.
* OPTIONAL, BUT RECOMMENDED: Write a blog post about the project and process.



<p class='util--hide'>View <a href='https://learn.co/lessons/guided-module-one-final-project'>Guided Module One Final Project</a> on Learn.co and start learning to code for free.</p>
