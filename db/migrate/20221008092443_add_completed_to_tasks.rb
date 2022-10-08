class AddCompletedToTasks < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :completed, false
  end
end
