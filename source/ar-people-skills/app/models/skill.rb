class Skill < ActiveRecord::Base
  has_many :abilities
  has_many :users, through: :abilities

  # validates :name, uniqueness: true

end
