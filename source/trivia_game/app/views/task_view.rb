require_relative '../../config/application'

class TaskView
  def self.show_tasks
    tasks = Task.all
    # puts tasks
    tasks.each {|task| puts "#{task.id} [#{task.complete}] #{task.description}"}
  end
end
