class Skill < ActiveRecord::Base
  has_many :ratings
  has_many :users, :through => :ratings
  def user_with_proficiency(rating)
    
  end
end


# true Zee has the beard growing skill!
# true Zee can Programm!!!!!!
# true Jesse has the beard growing skill!
# false Second Beard Growing Skill is not saved
# true  Jesse cannot grow a beard :(
# false ! Zee is a Beard Growing MASTER
