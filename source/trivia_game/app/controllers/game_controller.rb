require_relative '../../config/application'
require_relative '../views/game_view'

class GameController
  def self.run(command, argument)
    task = argument.join(" ")

    if command == "list"
        show_tasks
    elsif command == "add"
        add_task(task)
    elsif command == "delete"
        delete_task(task.to_i)
    elsif command == "complete"
        complete_task(task.to_i)
    end
  end

  def self.show_tasks
    GameView.show_tasks
  end

  def self.add_task(task_description)
    Question.create(description: task_description)
  end

  def self.delete_task(task_id)
    Question.delete(task_id)
  end

  def self.complete_task(task_id)
    task = Question.find(task_id)
    task.update(complete: 'X')
  end
end
