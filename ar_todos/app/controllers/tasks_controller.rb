class TaskController
  def list_tasks(list)
    completion = []
    p "-------------"
    Task.where("list_id == ?", list).each_with_index do |task, index| 
      completed = ""
     case task.completed
       when 0
      completed = "[ ]"
      when 1
      completed = "[X]"
    end
      p "#{index + 1}. #{task.description} :#{completed}" 
    end
  end

  def completed?
    completed = ""
    if task.completed == 0
      completed = "[ ]"
    elsif task.completed == 1
      completed = "[X]"
    end
  end

  def add_task(list, description)
    Task.create(description: description, list_id: list, completed: 0)
  end


  def convert_task_id(list, id)
    task_id = Task.where("list_id == ?", list)[id.to_i-1].id
    task_id
  end


  def delete_task(list, id)
    task_id = convert_task_id(list, id)
    Task.where("list_id = ?",list).delete(task_id)
  end

  def complete_task(list, id)
    task_id = convert_task_id(list, id)
    task_array = Task.where("list_id == ? and id == ?", list,task_id)
    p task_array[0]
    task_array[0].completed = 1
    p task_array[0].save
  end
end
