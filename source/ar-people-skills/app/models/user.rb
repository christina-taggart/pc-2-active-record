class User < ActiveRecord::Base

  has_many :proficiencies
  has_many :skills, through: :proficiencies

	validates :email, uniqueness: true

  def proficiency_for(skill)
    self.proficiencies.find_by_skill_id(skill.id).proficiency_rating
    # Proficiency.where(user_id: self.id, skill_id: skill.id).first.proficiency_rating
  end

  def set_proficiency_for(skill, level)
    self.proficiencies.find_by_skill_id(skill.id).update_attributes(proficiency_rating: level)
    # Proficiency.where(user_id: self.id, skill_id: skill.id).first.update_attributes(proficiency_rating: level)
  end
end
