require_relative '../../config/application'
require_relative '../views/task_view'

class TaskController
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
    TaskView.show_tasks
  end

  def self.add_task(task_description)
    Task.create(description: task_description)
  end

  def self.delete_task(task_id)
    Task.delete(task_id)
  end

  def self.complete_task(task_id)
    task = Task.find(task_id)
    task.update(complete: 'X')
  end
end
