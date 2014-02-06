class AddProficiencyLevelColumnToProficiencies < ActiveRecord::Migration
  def change
    add_column :proficiencies, :proficiency_level, :integer, default: 0
  end
end
