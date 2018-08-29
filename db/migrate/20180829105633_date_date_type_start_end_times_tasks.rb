class DateDateTypeStartEndTimesTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :start_time
    remove_column :tasks, :end_time
    add_column :tasks, :start_time, :datetime
    add_column :tasks, :end_time, :datetime
  end
end
