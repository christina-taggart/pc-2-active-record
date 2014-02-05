class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies

  def proficiency_for(skill)
    Proficiency.where(user_id: self.id, skill_id: skill.id).first.proficiency_level
  end

  def set_proficiency_for(skill, proficiency)
    Proficiency.where(user_id: self.id, skill_id: skill.id).first.update_attributes(proficiency_level: proficiency)
  end
end
