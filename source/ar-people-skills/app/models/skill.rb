class Skill < ActiveRecord::Base
  has_many :users, through: :ranks
  has_many :ranks
  validates :name, uniqueness: true


  def user_with_proficiency(rank)
    #find user with matching ranks in skills
    results = Rank.where(rank: rank, skill_id: self.id).first
    User.find(results.user_id)
  end

end
