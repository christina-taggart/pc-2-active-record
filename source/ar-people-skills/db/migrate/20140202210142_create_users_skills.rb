class CreateUsersSkills < ActiveRecord::Migration
  def change
  	create_table :proficiencies do |t|
  		t.belongs_to :user
      t.belongs_to :skill
  		t.float :proficiency
  	end
  end
end
