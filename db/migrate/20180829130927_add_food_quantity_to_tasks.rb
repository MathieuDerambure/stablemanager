class AddFoodQuantityToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :food_quantity, :integer
  end
end
