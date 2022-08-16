# require 'todo_list'

# RSpec.describe TodoList do
#     context 'After adding new tasks' do
#         it 'lists tasks as incomplete' do
#             todo_list = TodoList.new
#             todo_list.add("task_1 - incomplete")
#             expect(todo_list.incomplete).to eq ["task_1"]
#         end
#     end

#     context 'After marking all tasks as complete with give_up!' do
#         it 'lists all tasks as incomplete' do
#             todo_list = TodoList.new
#             todo_list.add("task_1 - incomplete")
#             todo_list.add("task_2 - incomplete")
#             todo_list.give_up!
#             expect(todo_list.complete).to eq ["task_1","task_2"]
#             expect(todo_list.incomplete).to eq []
#         end
#     end
# end