class Skill < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :ratings
  has_many :users, through: :ratings

  def user_with_proficiency(value)
  	user_id = Rating.where(skill_id: self.id, proficiency: value).first.user_id
  	User.find(user_id)
  end
end

# Find user by proficiency