class Skill < ActiveRecord::Base

  has_many :proficiencies
  has_many :users, through: :proficiencies

	validates :name, uniqueness: true

  def user_with_proficiency(level)
    user_id = Proficiency.where(skill_id: self.id, proficiency: level).first.user_id
    User.find(user_id)
  end
end
