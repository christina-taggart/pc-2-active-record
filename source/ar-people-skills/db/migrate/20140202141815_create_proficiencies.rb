class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |col|
      col.integer :user_id, :skill_id
      col.integer :proficiency, default: 0
    end
  end
end
