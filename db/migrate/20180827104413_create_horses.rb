class CreateHorses < ActiveRecord::Migration[5.2]
  def change
    create_table :horses do |t|
      t.string :name
      t.integer :box
      t.string :formula
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
