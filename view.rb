
class View
  def ask_user_for_a_title
    puts "what do you want to do?"
    gets.chomp
  end


  def list_task(task)
    task.each_with_index do |task , index|
      puts "#{index + 1}: #{task.title}"
    end
  end


  def get_task_index
    puts "select the task that you want to mark as completed"
    index = gets.chomp.to_i - 1
  end
end
