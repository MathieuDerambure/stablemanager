class DropPeriodicitiesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :periodicities
  end
end
