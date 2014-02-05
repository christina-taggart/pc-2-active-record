class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies
end

User.create(name: "Harold")
User.create(name: "Oliver")
User.create(name: "Sebastian")
User.create(name: "Carlotta")
User.create(name: "Octavia")