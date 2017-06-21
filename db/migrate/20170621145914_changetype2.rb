class Changetype2 < ActiveRecord::Migration[5.0]
  def up
    change_column :programs, :scholarship, :integer
  end

  def down
    change_column :programs, :scholarship, :string
  end
end
