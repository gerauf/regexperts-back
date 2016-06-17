class AddMissionToLevels < ActiveRecord::Migration
  def change
    add_column :levels, :mission, :text
  end
end
