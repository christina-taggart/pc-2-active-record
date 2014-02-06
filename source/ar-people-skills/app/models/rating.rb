class Rating < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :skill
  after_initialize :no_rating

private
  def no_rating
  	self.proficiency_rating = 0 if proficiency_rating == nil
  end
end
