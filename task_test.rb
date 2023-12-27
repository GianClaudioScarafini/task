require_relative "task"
require_relative "repository"

repository = Repository.new

task1 = Task.new("move the dog")
task2 = Task.new("clean the carpet")
repository.add(task1)
repository.add(task2)

p repository
