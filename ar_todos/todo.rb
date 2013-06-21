require_relative 'config/application'

my_list_controller = ListController.new
my_task_controller = TaskController.new
viewer = Display.new




list_id = gets.chomp
viewer.display_commands



my_list_controller.list_lists

puts "Select a list ID."





# my_task_controller.add_task("Make a new Meeting", "1")
# my_task_controller.list_tasks("3")
# my_task_controller.delete_task("3","3")
# my_task_controller.complete_task("3","3")

# my_task_controller.list_tasks("3")

# my_task_controller.list_tasks("1")



# puts "Put your application code in #{File.expand_path(__FILE__)}"


