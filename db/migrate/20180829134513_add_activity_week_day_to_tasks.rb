class AddActivityWeekDayToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :activity_week_day, :string
  end
end
