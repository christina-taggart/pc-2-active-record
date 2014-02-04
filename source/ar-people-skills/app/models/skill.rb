class Skill < ActiveRecord::Base
  has_many :scores
  has_many :users, through: :scores
  validates :name, presence: true
  validates :name, uniqueness: :true

  def user_with_proficiency(score)
    User.find(Score.where(score: score, skill_id: self.id).first.user_id)
  end

end
