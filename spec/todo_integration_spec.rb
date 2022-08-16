require 'todo'
require 'todo_list'

RSpec.describe 'integration' do
    context 'After adding new tasks' do
        it 'lists incomplete tasks' do
            todo_list = TodoList.new
            new_task = Todo.new("task_1")
            todo = new_task.task
            todo_list.add(todo)
            expect(todo_list.incomplete).to eq ["task_1"]
        end
    end

    context 'After marking all tasks as complete with give_up!' do
        xit 'lists all completed tasks' do
            todo_list = TodoList.new
            new_task = Todo.new("task_1")
            another_task = Todo.new("task_2")
            todo_1 = new_task.task
            todo_2 = another_task.task
            todo_list.add(todo_1)
            todo_list.add(todo_2)
            todo_list.give_up!
            expect(todo_list.complete).to eq ["task_1","task_2"]
            expect(todo_list.incomplete).to eq []
        end
    end

    context 'After adding a mix of complete and incomplete tasks' do
        xit 'lists all completed tasks' do
            todo_list = TodoList.new
            new_task = Todo.new("task_1")
            another_task = Todo.new("task_2")
            new_task.mark_done!
            todo_1 = new_task.task
            todo_2 = another_task.task
            todo_list.add(todo_1)
            todo_list.add(todo_2)
            expect(todo_list.complete).to eq ["task_1"]
            expect(todo_list.incomplete).to eq ["task_2"]
        end
    end
end