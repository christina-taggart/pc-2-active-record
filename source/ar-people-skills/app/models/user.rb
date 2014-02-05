class User < ActiveRecord::Base
  has_many :ratings
  has_many :skills, :through => :ratings
  def proficiency_for(skill)
    self.ratings.where(skill_id: skill.id).first.proficiency_rating
  end

  def set_proficiency_for(skill, rating)
    self.ratings.where(skill_id: skill.id).first.update_attributes({proficiency_rating: rating})
  end
end
