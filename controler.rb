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

  end

  def mark_task_as_completed

  end
end
