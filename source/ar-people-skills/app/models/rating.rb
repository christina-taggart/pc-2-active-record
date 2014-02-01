class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  after_validation :init

  def init
    self.rating ||= 0
  end
end
