class CreateMedecines < ActiveRecord::Migration[5.2]
  def change
    create_table :medecines do |t|
      t.string :name

      t.timestamps
    end
  end
end
