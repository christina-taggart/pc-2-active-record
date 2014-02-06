class Skill < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings
  validates :name, uniqueness: true

  def user_with_proficiency(level)
    self.ratings.find_by_proficiency(level).user
  end
end
