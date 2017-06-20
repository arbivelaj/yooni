class AddImagesToUniversities < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :images, :string
  end
end
