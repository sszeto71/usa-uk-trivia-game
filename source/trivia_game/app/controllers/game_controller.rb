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
  def self.run
    GameView.show_menu

  end

  def self.start_game

  end

  # def self.show_tasks
  #   GameView.show_tasks
  # end

  # def self.add_task(task_description)
  #   Question.create(description: task_description)
  # end

  # def self.delete_task(task_id)
  #   Question.delete(task_id)
  # end

  # def self.complete_task(task_id)
  #   task = Question.find(task_id)
  #   task.update(complete: 'X')
  # end
end
