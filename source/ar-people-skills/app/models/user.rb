class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :users_skills
end




