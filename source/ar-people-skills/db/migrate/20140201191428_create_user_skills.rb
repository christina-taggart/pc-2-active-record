class CreateUserSkills < ActiveRecord::Migration
  def change
    create_table :user_skills do |col|
      col.belongs_to :user
      col.belongs_to :skill
      col.integer :proficiency
    end
  end
end
