class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, through: :users_skills
  validates :name, uniqueness: true

  def proficiency_level(level)
    User.where(skill_id: self.id, proficiency: level).name
  end

end
