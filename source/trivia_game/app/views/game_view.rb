require_relative '../../config/application'

class GameView
  def self.show_tasks
    tasks = Question.all
    # puts tasks
    tasks.each {|task| puts "#{task.id} [#{task.complete}] #{task.description}"}
  end

  def self.show_menu
    puts "#"*100
    puts "#"*100
    # Welcome message
    puts "Welcome to ______! This quiz will ask you a few simple questions and tell you if you belong in the US of A or the UK"
    puts "Available commands:"
    puts "Start - start the game"
    puts "Exit - exit the program"
    print "Enter your command here: "
      input = gets.chomp
      # return input.downcase

     if input == "Start"
      GameController.start_game
     elsif input == "Exit"
      exit_game
     end

  end

  def exit_game
    puts "Game over"
  end
end
