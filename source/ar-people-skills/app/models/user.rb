class User < ActiveRecord::Base
  has_many :scores
  has_many :skills, through: :scores
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: :true

  def proficiency_for(skill)
    Score.where(user_id: self.id, skill_id: skill.id).first.score
  end

  def set_proficiency_for(skill, score)
    Score.where(user_id: self.id, skill_id: skill.id).first.update_attributes(score: score)
  end


end


