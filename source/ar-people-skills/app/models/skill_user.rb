class SkillUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  validates :user_id, :uniqueness => { :scope => :skill_id }
end
