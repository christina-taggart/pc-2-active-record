class User < ActiveRecord::Base
  has_many :ratings
  has_many :skills, through: :ratings

  def proficiency_for(skill)
    self.ratings.where(skill_id: skill.id).first.proficiency
  end

  def set_proficiency_for(skill, level)
    self.ratings.where(skill_id: skill.id).first.update_attributes(proficiency: level)
  end
end
