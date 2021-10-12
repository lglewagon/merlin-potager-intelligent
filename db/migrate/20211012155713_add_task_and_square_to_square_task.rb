class AddTaskAndSquareToSquareTask < ActiveRecord::Migration[6.0]
  def change
    add_reference :square_tasks, :squares, index: true
    add_reference :square_tasks, :tasks, index: true
  end
end
