class CreatePeriodicities < ActiveRecord::Migration[5.2]
  def change
    create_table :periodicities do |t|
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday

      t.timestamps
    end
  end
end
