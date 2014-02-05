class User < ActiveRecord::Base
	has_many :abilities
  has_many :skills, through: :abilities

  def proficiency_for(skill)
  	user_id = self.id
  	skill_id = skill.id
  	Ability.where(user_id: user_id).where(skill_id: skill_id)[0][:proficiency_rating].to_i
  end
end
