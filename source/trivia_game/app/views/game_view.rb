require_relative '../../config/application'

class GameView
  def self.show_tasks
    tasks = Question.all
    # puts tasks
    tasks.each {|task| puts "#{task.id} [#{task.complete}] #{task.description}"}
  end
end
