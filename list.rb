class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  def number_of_incomplete_tasks
    p incomplete_task_names
    incomplete_task_names.length
  end

  def complete_tasks
    completed_tasks = []
    @tasks.each do |task|
      if task.complete == true
        completed_tasks << task
      end
    end
    return completed_tasks
  end

  def delete_complete_tasks
    complete_tasks.each do |task|
      @tasks.delete(task)
    end
  end

  def tasks_names(tasks)
    given_tasks = []
    tasks.each do |task|
      given_tasks << task.name
    end
    return given_tasks
  end

  def rank_priorities
    highest_to_lowest = @tasks.sort_by do |task|
      -task.priority 
    end
    return tasks_names(highest_to_lowest)
  end

end