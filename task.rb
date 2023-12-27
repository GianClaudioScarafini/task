class Task
  attr_accessor :title
  def initialize(title)
    @title = title
    @completed = false
  end

  def mark_task_as_completed
    @completed = true
  end
end
