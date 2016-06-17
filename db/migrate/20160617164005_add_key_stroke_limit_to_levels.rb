class AddKeyStrokeLimitToLevels < ActiveRecord::Migration
  def change
    add_column :levels, :keystrokelimit, :integer
  end
end
