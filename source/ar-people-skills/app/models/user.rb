class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :email, presence: true

  def proficiency_for(skill)
    self.proficiencies.find_by_skill_id(skill.id).proficiency
  end

  def set_proficiency_for(skill, proficiency)
    self.proficiencies.find_by_skill_id(skill.id).update_attributes(proficiency: proficiency)
  end
end
