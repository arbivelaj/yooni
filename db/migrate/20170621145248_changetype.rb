class Changetype < ActiveRecord::Migration[5.0]
  def up
    change_column :programs, :scholarship, :string
  end

  def down
    change_column :programs, :scholarship, :string
  end
end
