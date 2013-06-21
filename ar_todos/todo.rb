require_relative 'config/application'

my_list_controller = ListController.new
my_task_controller = TaskController.new
viewer = Display.new
list_id = 0

while list_id != "Exit"
  viewer.display_commands
  list_id = gets.capitalize.chomp

  case list_id
  when "Add list"
    viewer.prompt_naming_list
    list_name = gets.chomp
    my_list_controller.add_list(list_name)
    viewer.prompt_done
  when "Display lists"
    my_list_controller.list_lists
  when "Delete list"
    my_list_controller.list_lists
    viewer.prompt_list_id
    list_id = gets.chomp
    my_list_controller.delete_list(list_id)
    viewer.prompt_done
  when "Add task"
    my_list_controller.list_lists
    viewer.prompt_list_id
    list_id = gets.chomp
    my_task_controller.list_tasks(list_id)
    viewer.prompt_add_task
    task = gets.chomp
    my_task_controller.add_task(list_id, task)
    viewer.prompt_done
  when "Display tasks"
    my_list_controller.list_lists
    viewer.prompt_list_id
    list_id = gets.chomp
    my_task_controller.list_tasks(list_id)
  when "Delete task"
    my_list_controller.list_lists
    viewer.prompt_list_id
    list_id = gets.chomp
    my_task_controller.list_tasks(list_id)
    viewer.prompt_add_task
    task = gets.chomp
    my_task_controller.delete_task(list_id, task)
    viewer.prompt_done
    viewer.prompt_done
  when "Complete_task"
    my_list_controller.list_lists
    viewer.prompt_list_id
    list_id = gets.chomp
    my_task_controller.list_tasks(list_id)
    viewer.prompt_add_task
    task = gets.chomp
    my_task_controller.complete_task!(list_id, task)
    viewer.prompt_done
    viewer.prompt_done
  when "Exit"
    break
  else
    viewer.invalid_entry
  end
end












# my_task_controller.add_task("Make a new Meeting", "1")
# my_task_controller.list_tasks("3")
# my_task_controller.delete_task("3","3")
# my_task_controller.complete_task("3","3")

# my_task_controller.list_tasks("3")

# my_task_controller.list_tasks("1")



# puts "Put your application code in #{File.expand_path(__FILE__)}"


