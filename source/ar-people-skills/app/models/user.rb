class User < ActiveRecord::Base
  has_many :skill_users
  has_many :skills, through: :skill_users
end
