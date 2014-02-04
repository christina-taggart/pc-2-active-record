class SkillsUsers < ActiveRecord::Migration
  def change
  	create_table :skills_users do |col|
      col.belongs_to :user
      col.belongs_to :skill
      col.string :user_id
      col.string :skill_id
      col.string :proficiency_rating
    end
  end
end
