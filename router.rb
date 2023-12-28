class Router
  def initialize(controler)
  @controler = controler
  end


  def run
    loop do
      puts "what would you like to do?"
      puts "1 => Add task"
      puts "2 => List all tasks"
      puts "3 => Mark as complited"
      choice = gets.chomp.to_i

      if choice == 1
        @controler.add_task
      elsif choice == 2
        @controler.list_task
      elsif choice == 3
        @controler.mark_task_as_completed
      else
        puts "wrong inputs "
      end
    end
  end
end
