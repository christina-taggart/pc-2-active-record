class User < ActiveRecord::Base

  has_many :proficiencies
  has_many :skills, through: :proficiencies

	validates :email, uniqueness: true

  def proficiency_for(skill)
    Proficiency.where(user_id: self.id, skill_id: skill.id).first.proficiency
  end

  def set_proficiency_for(skill, level)
    Proficiency.where(user_id: self.id, skill_id: skill.id).first.update_attributes(proficiency: level)
  end
end
