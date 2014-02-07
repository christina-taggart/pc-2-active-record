class AddRatingToSkillUsers < ActiveRecord::Migration
  def change
  	add_column :skill_users, :rating, :integer, default: 0
  	add_index :skill_users, [:user_id,:skill_id], unique: true

  	add_index :skills, :name, unique: true
  end
end
