require_relative "colors"
module BTLR
  # Class is a container that holds a task. 
  #
  # A task is simply a description string and a time
  # stamp created when the object is created.
  class ListItem

    attr_reader :task,
                :created_at,
                :completed
    
    def initialize(task, created_at = Time.now)
      @task = title_case(task)
      @created_at = created_at
      @completed = false
    end

    def to_s
      task = "#{Color.yellow(@task)}"
      created = "#{Color.blue(@created_at)}"
      completed = "#{@completed ? Color.green(@completed) : Color.red(@completed)}"
      "Task: #{task} #{created} #{completed} #{new_line}"
    end

    private

    # Return two new line characters.
    def new_line
      "\n\n"
    end

    def title_case(task)
      task.split.map(&:capitalize).join(' ')
    end


  end
end
