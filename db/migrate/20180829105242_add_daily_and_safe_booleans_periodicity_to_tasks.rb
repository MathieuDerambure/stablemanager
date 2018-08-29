class AddDailyAndSafeBooleansPeriodicityToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :daily, :boolean, default: false, null: false
    remove_column :tasks, :weekly
    remove_column :tasks, :monthly
    add_column :tasks, :weekly, :boolean, default: false, null: false
    add_column :tasks, :monthly, :boolean, default: false, null: false
  end
end
