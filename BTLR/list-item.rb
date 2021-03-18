module BTLR
  # Class is a container that holds a task. 
  #
  # A task is simply a description string and a time
  # stamp created when the object is created.
  class ListItem

    attr_reader :task,
                :created_at,
                :completed
    
    def initialize(task, created_at)
      @task = task
      @created_at = created_at
      @completed = false
    end

    def to_s
      return @task + " | " + @created_at.to_s
    end

  end
end
