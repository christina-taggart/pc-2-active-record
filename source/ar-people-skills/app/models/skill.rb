class Skill < ActiveRecord::Base
  has_many :users, through: :skills_users
end
