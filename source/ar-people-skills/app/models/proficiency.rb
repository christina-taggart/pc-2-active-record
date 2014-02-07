class Proficiency < ActiveRecord::Base
	belongs_to :skill
	belongs_to :user
  befoe_save :proficiency_default

	def proficiency_default
		self.proficiency = 0 if proficiency == nil
	end
end
