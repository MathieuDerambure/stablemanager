class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.boolean :doing
      t.boolean :done
      t.date :start_time
      t.date :end_time
      t.references :horse, foreign_key: true
      t.references :user, foreign_key: true
      t.references :food_type, foreign_key: true
      t.references :activity, foreign_key: true
      t.references :medecine, foreign_key: true
      t.references :comment, foreign_key: true
      t.references :vetenary, foreign_key: true
      t.references :shoe_maker, foreign_key: true
      t.references :antidote, foreign_key: true

      t.timestamps
    end
  end
end
