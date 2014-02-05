class Skill < ActiveRecord::Base
  validates :name, uniqueness: true

  has_many :proficiencies
  has_many :users, through: :proficiencies
end
