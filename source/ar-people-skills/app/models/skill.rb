class Skill < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings
  validates :name, uniqueness: true

  def user_with_proficiency(level)
    user_id = Rating.where(skill_id: self.id, proficiency: level).first.user_id
    User.find(user_id)
  end
end
