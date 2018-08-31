class AddFormSlugs < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :slug, :string
    add_column :antidotes, :slug, :string
    add_column :food_types, :slug, :string
    add_column :medecines, :slug, :string
    add_column :shoe_makers, :slug, :string
    add_column :vetenaries, :slug, :string
  end
end
