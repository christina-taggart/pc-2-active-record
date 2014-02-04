class User < ActiveRecord::Base
  has_many :skills, through: :skills_users
end
