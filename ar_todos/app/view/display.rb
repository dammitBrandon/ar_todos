class Display

  def display_commands
  puts " 
  Choose a command:
  Add list
  Display lists
  Delete list
  Add task
  Display tasks
  Delete task
  Complete task
  Exit
  "
  end

  def prompt_naming_list
    puts "What is the name of this new list?"
  end

  def prompt_list_id
    puts "Select a list ID."
  end

  def prompt_add_task
    puts "What task would you like to add to the list."
  end

  def prompt_done
    puts"
    Done!
    "
  end

  def invalid_entry 
  puts "
  *----------------------------*
  | That option doesn't exist! |
  *----------------------------*"
  end

end
