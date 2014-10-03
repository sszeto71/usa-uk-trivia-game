require_relative 'config/application'
require_relative 'app/controllers/task_controller'

puts "Put your application code in #{File.expand_path(__FILE__)}"

# Create a model class called Task
# Create migration file for the task table
# Create a controller file that will take the user input
# pass the first ARGV value as command and rest of ARGV as the argument

TaskController.run(ARGV.first, ARGV[1..-1])

