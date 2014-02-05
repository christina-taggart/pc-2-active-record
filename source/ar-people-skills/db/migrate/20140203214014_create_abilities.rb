class CreateAbilities < ActiveRecord::Migration
  def change
  	create_table :abilities do |col|
      col.belongs_to :user
      col.belongs_to :skill
      col.string :user_id
      col.string :skill_id
      col.string :proficiency_rating
	end
  end
end
