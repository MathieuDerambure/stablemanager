class AddPhotoToHorses < ActiveRecord::Migration[5.2]
  def change
    add_column :horses, :photo, :string
  end
end
