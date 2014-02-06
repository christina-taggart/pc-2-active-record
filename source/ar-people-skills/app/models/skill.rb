class Skill < ActiveRecord::Base
  # Remember to create a migration!
  has_many :ratings
  has_many :users, through: :ratings

  validates :name, uniqueness: true 

  def user_with_proficiency(rating)
  	user_id = Rating.where(proficiency: rating, skill_id: self.id).first.user_id
    User.find(user_id)
  end
end
