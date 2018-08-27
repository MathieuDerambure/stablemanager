class CreateVetenaries < ActiveRecord::Migration[5.2]
  def change
    create_table :vetenaries do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
