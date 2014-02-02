class User < ActiveRecord::Base
  has_many :user_skills
  has_many :skills, through: :user_skills

  def proficiency_for(skill)
    tested_user_skill = UserSkill.where(user_id: self.id, skill_id: skill.id).first
    tested_user_skill.proficiency
  end
end
