class Proficiency < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :skill
  belongs_to :user
  after_validation :init

  def init
    self.proficiency_level = 0 if self.proficiency_level == nil
  end
end
