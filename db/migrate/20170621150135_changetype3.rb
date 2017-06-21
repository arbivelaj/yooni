class Changetype3 < ActiveRecord::Migration[5.0]
  def up
    change_column :programs, :scholarship, 'integer USING CAST(scholarship AS integer)'
  end

  def down
    change_column :programs, :scholarship, :string
  end
end
