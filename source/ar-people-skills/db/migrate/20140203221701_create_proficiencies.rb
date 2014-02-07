class CreateProficiencies < ActiveRecord::Migration
  def change
  	create_table :proficiencies do |t|
  		t.integer :proficiency_rating, default: 0
  		t.belongs_to :skill
  		t.belongs_to :user

  		t.timestamps
  	end
  end
end
