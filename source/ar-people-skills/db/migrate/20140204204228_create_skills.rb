class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name, null: false
      t.string :context, null: false
      t.timestamps
    end
  end
end
