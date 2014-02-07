class Proficiency < ActiveRecord::Base
  attr_accessible :proficiency 
  belongs_to :user
  belongs_to :skill
    
end


