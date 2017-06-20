class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :program, foreign_key: true

      t.timestamps
    end
  end
end
