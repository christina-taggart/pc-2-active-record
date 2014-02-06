class Skill < ActiveRecord::Base
  has_many :ratings
  has_many :users, :through => :ratings
  validates :name, :uniqueness => true
  def user_with_proficiency(rating)
    rating = Rating.where(skill_id: self.id, proficiency_rating: rating).first
    User.find(rating.user_id)
  end
end