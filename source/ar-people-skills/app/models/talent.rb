class Talent < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user
  after_initialize :init

  def init
    self.proficiency ||= 0
  end
end
