class CreateTaskPeriodicities < ActiveRecord::Migration[5.2]
  def change
    create_table :task_periodicities do |t|
      t.references :periodicities, foreign_key: true
      t.references :tasks, foreign_key: true

      t.timestamps
    end
  end
end
