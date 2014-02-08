class User < ActiveRecord::Base
	has_many :ratings
	has_many :skills, through: :ratings

	def proficiency_for(skill)
		self.ratings.find_by_skill_id(skill.id).proficiency
	end

	def set_proficiency_for(skill, rating)
		self.ratings.find_by_skill_id(skill.id).proficiency = rating
	end


end