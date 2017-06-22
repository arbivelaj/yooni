class AddCoordinatesToUniversities < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :latitude, :float
    add_column :universities, :longitude, :float
  end
end
