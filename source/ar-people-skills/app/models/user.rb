class User < ActiveRecord::Base
	has_many :abilities
  has_many :skills, through: :abilities

  def proficiency_for(skill)
  	user_id = self.id
  	skill_id = skill.id
  	Ability.where(user_id: user_id).where(skill_id: skill_id)[0][:proficiency_rating].to_i
  end

  def set_proficiency_for(skill, proficiency_rating)
  	user_id = self.id
  	skill_id = skill.id
  	Ability.where(user_id: user_id).where(skill_id: skill_id)[0].update_attributes(:proficiency_rating => proficiency_rating)
  end
end