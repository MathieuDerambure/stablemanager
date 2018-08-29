class BooleansDefaultValuesTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :done
    remove_column :tasks, :doing
    add_column :tasks, :done, :boolean, null: false, default: false
    add_column :tasks, :doing, :boolean, null: false, default: false
  end
end
