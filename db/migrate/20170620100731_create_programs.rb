class CreatePrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :programs do |t|
      t.string :title
      t.integer :ranking
      t.integer :tuition
      t.string :scholarship
      t.string :level
      t.references :university, foreign_key: true
      t.string :subject

      t.timestamps
    end
  end
end
