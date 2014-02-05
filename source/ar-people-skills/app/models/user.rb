class User < ActiveRecord::Base
  has_many :scores
  has_many :skills, through: :scores
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: :true

  def proficiency_for(skill)
    Score.where(user_id: self.id, skill_id: skill.id).first.rating
  end

  def set_proficiency_for(skill, rating)
    Score.where(user_id: self.id, skill_id: skill.id).first.update_attributes(rating: rating)
  end


end


