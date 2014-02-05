class Skill < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :proficiencies
  has_many :users, through: :proficiencies

  def user_with_proficiency(proficiency_level)
    user_id = Proficiency.where(skill_id: self.id, proficiency_level: proficiency_level).first.user_id
    User.find(user_id)
  end
end
