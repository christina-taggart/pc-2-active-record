class CreateSkills < ActiveRecord::Migration
  def change
  	create_table :skills do |col|
	  	col.string :name
	  	col.string :context
      col.timestamps
    end
  end
end
