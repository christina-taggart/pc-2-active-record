class Skill < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :ratings
  has_many :users, through: :ratings

  def user_with_proficiency(value)
    User.where(proficiency: value).first
  end
end
