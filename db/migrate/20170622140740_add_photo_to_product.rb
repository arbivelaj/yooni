class AddPhotoToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :photo, :string
  end
end
