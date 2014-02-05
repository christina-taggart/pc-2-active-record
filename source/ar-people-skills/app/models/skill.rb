class Skill < ActiveRecord::Base
  # Remember to create a migration!
  has_many :ratings
  has_many :users, through: :ratings
end
