class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |col|
      col.integer :user_id, :skill_id
      col.integer :proficiency, default: 0
      col.timestamps
    end
  end
end
