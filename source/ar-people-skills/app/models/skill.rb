class Skill < ActiveRecord::Base
  has_many :skill_users
  has_many :users, through: :skill_users
  validates :name, uniqueness: true

  def user_with_proficiency(rating)
  	sk = SkillUser.find_by_skill_id_and_rating(self.id,rating)
  	User.find(sk.user_id)
  end
end
