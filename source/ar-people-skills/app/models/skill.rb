class Skill < ActiveRecord::Base
  has_many :abilities
  has_many :users, through: :abilities

  validates :name, uniqueness: true

  def user_with_proficiency(proficiency)
  	skill_id = self.id
  	abilities_with_this_proficiency_and_skill = Ability.where(proficiency_rating: proficiency).where(skill_id: skill_id)
  	abilities_with_this_proficiency_and_skill.map! {|ability| ability[:user_id]}
  	abilities_with_this_proficiency_and_skill.map! {|user_id| User.find(user_id)}
  	abilities_with_this_proficiency_and_skill[0]
  end

end
