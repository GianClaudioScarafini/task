require_relative 'task'

class Controler
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def add_task
    #1) ask user for a task
    #2) take user's input
    title = @view.ask_user_for_a_title

    #3) create instance of task from inputs
    task = Task.new(title)

    #4) Give task to the repository
    @repository.add(task)

  end

  def list_task
    # 1 ask for all tasks
    tasks = @repository.all
    # 2 ask the view to return the task
    @view.list_task(tasks)
  end

  def mark_task_as_completed
    # 1 ask the user for the index of completed task
    index = @view.get_task_index
    # 2 ask the repo to retirve the element to give index
    task = @repository.find(index)
    # 3 mark the task as completed
    task.mark_task_as_completed

  end
end
