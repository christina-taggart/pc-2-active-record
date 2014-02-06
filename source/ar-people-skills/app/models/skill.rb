class Skill < ActiveRecord::Base
  # Remember to create a migration!
  has_many :ratings
  has_many :users, through: :ratings
  validates :name, uniqueness: true

 def user_with_proficiency(level)
 	User.where(skill_id: self.id, proficiency_rating: level).name
 end
 
end
