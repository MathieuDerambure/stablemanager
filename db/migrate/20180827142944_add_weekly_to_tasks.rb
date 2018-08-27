class AddWeeklyToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :weekly, :boolean
    add_column :tasks, :monthly, :boolean
  end
end
