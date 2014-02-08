class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id, :skill_id
      t.integer :proficiency, default: 0

      t.timestamps
    end
  end
end
