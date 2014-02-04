class Skill < ActiveRecord::Base
  has_many :talents
  has_many :users, through: :talents
  validates_uniqueness_of :name

  def user_with_proficiency(score)
    talent = Talent.where("skill_id = ?", self.id).first
    User.find(talent.user_id).name
  end
end
