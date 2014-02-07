class User < ActiveRecord::Base
  has_many :skill_users
  has_many :skills, through: :skill_users

  def proficiency_for(skill)
  	SkillUser.find_by_user_id_and_skill_id(self.id,skill.id).rating
  end

  def set_proficiency_for(skill, rating)
  	skill_user = SkillUser.find_by_user_id_and_skill_id(self.id,skill.id)
  	skill_user.rating = rating
  	skill_user.save
  end
end
