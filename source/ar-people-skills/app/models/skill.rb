class Skill < ActiveRecord::Base
	has_many :users, through: :userskills
	has_many :userskills
	validates :name, uniqueness: true
  
  def self.find_by_name(name)
  	self.where(name: name).first
  end

  def user_with_proficiency(proficiency)
  	user_id = Userskill.where(proficiency: proficiency, skill_id: self.id).first.user_id
  	User.find(user_id)
  end
end
