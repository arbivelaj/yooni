class CreateReviews < ActiveRecord::Migration[5.0]
  def change

    create_table :programs do |t|

      t.string   "title"
      t.integer  "ranking"
      t.integer  "tuition"
      t.integer  "scholarship"
      t.string   "level"
      t.string   "subject"
      t.references :university, foreign_key: true

      t.timestamps
    end

    create_table :reviews do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :program, foreign_key: true

      t.timestamps
    end
  end
end
