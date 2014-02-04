class User < ActiveRecord::Base
  has_many :talents
  has_many :skills, through: :talents

  def proficiency(skill)
    Talent.where("skill_id = ? AND user_id= ?", skill.id, self.id).first
  end

  def proficiency_for(skill)
    proficiency(skill).proficiency
  end

  def set_proficiency_for(skill, score)
    Talent.where("skill_id = ? AND user_id= ?", skill.id, self.id).first.proficiency = score
  end
end
