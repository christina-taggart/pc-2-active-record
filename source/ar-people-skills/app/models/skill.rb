class Skill < ActiveRecord::Base
  has_many :ratings
  has_many :users, :through => :ratings
  validates :name, :uniqueness => true
  def user_with_proficiency(rating)

  end
end