# require 'todo'

# RSpec.describe Todo do
#     context 'After adding a new task' do
#         it 'Returns the task' do
#                 new_task = Todo.new("task_1")
#                 expect(new_task.task).to eq "task_1 - incomplete"
#         end
#         it 'Shows the task marked as incomplete when checking with done?' do
#             new_task = Todo.new("task_1")
#             expect(new_task.done?).to eq false
#         end
#     end

#     context 'After marking task as complete with mark_done!' do
#         it 'Shows the task marked as complete when checking with done?' do
#             new_task = Todo.new("task_1")
#             new_task.mark_done!
#             expect(new_task.done?).to eq true
#             expect(new_task.task).to eq "task_1 - complete"
#         end
#     end
# end