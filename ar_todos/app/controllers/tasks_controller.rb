class TaskController
  def list_tasks(list)
    completion = []
    p "-------------"
    Task.where("list_id == ?", list).each_with_index do |task, index| 
      completed = ""
      if task.completed == 0
        completed = "[ ]"
      else
        completed = "[X]"
      end
      p "#{index + 1}. #{task.description} :#{completed}" 
    end
  end

  def add_task(description, list)
    Task.create(description: description, list_id: list, completed: 0)
  end

  def delete_task(list, id)
    task_id = Task.where("list_id == ?", list)[id.to_i-1].id
    Task.where("list_id = ?",list).delete(task_id)
  end
end
