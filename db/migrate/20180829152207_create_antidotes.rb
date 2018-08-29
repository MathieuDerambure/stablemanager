class CreateAntidotes < ActiveRecord::Migration[5.2]
  def change
    create_table :antidotes do |t|
      t.string :name

      t.timestamps
    end
    add_reference :tasks, :antidote, index: true
  end
end
