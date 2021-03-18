module CMDList

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
