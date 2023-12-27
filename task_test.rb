require_relative "task"
require_relative "repository"
require_relative "controler"
require_relative "view"


repository = Repository.new
view = View.new
controler = Controler.new(view, repository)


controler.add_task
controler.add_task
controler.list_task
controler.mark_task_as_completed
controler.add_task


# task1 = Task.new("move the dog")
# task2 = Task.new("clean the carpet")
# repository.add(task1)
# repository.add(task2)

# p repository
