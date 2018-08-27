class DropTaskPeriodicitiesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :task_periodicities
  end
end
