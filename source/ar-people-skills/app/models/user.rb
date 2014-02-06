class User < ActiveRecord::Base
	has_many :skills, through: :userskills
	has_many :userskills
  # Remember to create a migration!

  def find_skill(skill)
  	Userskill.where(skill_id: skill.id, user_id: self.id ).first
  end

  def proficiency_for(skill)
  	find_skill(skill).proficiency
  end

  def set_proficiency_for(skill, proficiency)
  	find_skill(skill).update_attributes(proficiency: proficiency)
  end
end
