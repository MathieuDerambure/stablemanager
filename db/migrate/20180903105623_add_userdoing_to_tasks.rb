class AddUserdoingToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :user_doing, index: true
    add_foreign_key :tasks, :users, column: :user_doing_id
  end
end
