class Skill < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings

  validates :name, uniqueness: true

end
