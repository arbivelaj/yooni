class CreateUniversities < ActiveRecord::Migration[5.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :website
      t.string :phone_number
      t.string :contact

      t.timestamps
    end
  end
end
