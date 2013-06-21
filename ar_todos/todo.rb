require_relative 'config/application'



input = ARGV

puts "You said #{input}"

my_task_controller = TaskController.new
# my_task_controller.add_task("Make a new Meeting", "1")
my_task_controller.list_tasks("2")
my_task_controller.delete_task("2","3")
my_task_controller.list_tasks("2")

# my_task_controller.list_tasks("1")



# puts "Put your application code in #{File.expand_path(__FILE__)}"
