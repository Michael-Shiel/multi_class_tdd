class TodoList
    def initialize
        @todo_list = []
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing
        @todo_list << todo
    end
  
    def incomplete
      # Returns all non-done todos
        @todo_list.reject do |task| 
            task.done?
        end
    end
  
    def complete
      # Returns all complete todos
      @todo_list.select do |task| 
        task.done?
      end
    end
  
    def give_up!
      # Marks all todos as complete
        @todo_list.each { |task| task.mark_done! if !task.done? }
    end
  end