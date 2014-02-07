class AddSkillUsersJoin < ActiveRecord::Migration
  def change
  	create_table :skill_users do |t|
  		t.integer :user_id, :skill_id
  		t.timestamps
  	end
  end
end
