require_relative '../../config/application'
require_relative '../views/game_view'

# Pseduocode
# Show menu and instructions (start game, exit, help)
# Start game
# Pull random question from database
# Display the question
# Get user input (True or False)
# Check correctness
# Get increment for both US and UK
# When game exit, do check on country increment to determine if user
# is more US or UK

class GameController
  puts "\e[H\e[2J"
  def self.run
    GameView.print_welcome
    puts ""
    GameView.print_to
    puts ""
    GameView.print_pants
    puts ""
    GameView.print_or
    puts ""
    GameView.print_trousers
    puts ""
    GameView.show_menu
  end

  def self.start_game
    puts "\e[H\e[2J"
    @@uk = 0
    @@us = 0
    shuffled = Question.all.shuffle
    shuffled.each do |question|
    GameView.show_question(question)
    end
    GameView.output_at_end(@@uk,@@us)
  end

  def self.check_correctness(user_guess, description)
    if user_guess == description.answer.downcase
      puts "Good job!"
      sleep(0.6)
      puts "\e[H\e[2J"
      if description.answer == 'UK'
        @@uk += 1
      elsif description.answer == 'US'
        @@us += 1
      end
    elsif user_guess != 'us' && user_guess != 'uk'
      puts "There are literally only two possible answers and you blew it"
      5.times do
        print '.'
        sleep(0.5)
      end
      puts ""
    else
      puts "Too bad!"
      sleep(0.6)
      puts "\e[H\e[2J"
    end
  end
end
