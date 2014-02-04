class CreateSkillsUsers < ActiveRecord::Migration
  def change
  	create_table :skills_users do |t|
  		t.string :proficienty_rating
  		t.belongs_to :skill
  		t.belongs_to :user

  		t.timestamps
  	end
  end
end
