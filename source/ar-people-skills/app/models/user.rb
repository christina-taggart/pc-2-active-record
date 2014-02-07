class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies

  def proficiency_for(skill)
    self.proficiencies.where(skill: skill)
  end

  def set_proficiency_for(skill, proficiency)
    self.proficiencies.where(skill_id: skill.id).first.update_attributes(proficiency: proficiency)
  end
end

