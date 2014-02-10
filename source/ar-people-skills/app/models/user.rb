class User < ActiveRecord::Base
  has_many :skills, through: :ranks
  has_many :ranks

  def proficiency_for(skill)
    # find rank for skill
    self.ranks.where(skill_id: skill.id).first.rank
  end

  def set_proficiency_for(skill, rank)
    #set rank for a skill
    self.ranks.where(skill_id: skill.id).first.update_attributes({rank: rank})
  end
end
