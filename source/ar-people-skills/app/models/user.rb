class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies

  def self.proficiency_for(skill)
    Proficiency.where(skill: skill)
  end

  def self.set_proficiency_for(skill, proficiency_level)
    skill = Proficiency.where(skill: skill)
    skill.proficiency_level << proficiency_level
  end
end

