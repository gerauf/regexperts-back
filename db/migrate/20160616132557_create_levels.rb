class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.text       :text
      t.string     :target
      t.timestamps null: false
    end
  end
end
