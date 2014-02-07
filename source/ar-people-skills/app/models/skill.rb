class Skill < ActiveRecord::Base
  attr_accessible :name, :context
  validates :name, uniqueness: true

  has_many :proficiencies
  has_many :users, through: :proficiencies

  def user_with_proficiency(proficiency_level)
   prof_and_skill = Proficiency.where(skill_id: self.id, proficiency: proficiency_level).first.user_id
   User.find(prof_and_skill)
  end
  
end
