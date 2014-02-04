class User < ActiveRecord::Base
	has_many :abilities
  has_many :skills, through: :abilities
end
