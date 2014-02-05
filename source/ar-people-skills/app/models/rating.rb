class Rating < ActiveRecord::Base
	belongs_to :skill
	belongs_to :user
  # Remember to create a migration!
end
