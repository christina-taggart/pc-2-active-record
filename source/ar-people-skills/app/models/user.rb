class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :ratings
  has_many :skills, through: :ratings

  def set_proficiency_for(skill, level)
  	Rating.where(skill_id: skill.id, user_id: self.id ).first.update_attributes(proficiency_rating: level)
  	
  end

  def proficiency_for(skill)
  	Rating.where(skill_id: skill.id, user_id: self.id ).first.proficiency_rating
  	
  end


end
