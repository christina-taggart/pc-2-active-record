class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  before_save :proficiency_default

  private

  def proficiency_default
    self.proficiency = 0 if proficiency == nil
  end
end
