class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sur_name, :string
    add_column :users, :first_name, :string
  end
end