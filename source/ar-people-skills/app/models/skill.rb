class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, through: :proficiencies
  validates :name, presence: true
  validates :name, uniqueness: true

  def user_with_proficiency(proficiency)
    self.proficiencies.find_by_proficiency(proficiency).user
  end
end
