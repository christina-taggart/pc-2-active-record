class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  after_initialize :set_proficiency

  def set_proficiency
    self.proficiency = 0 if proficiency == nil
  end
end