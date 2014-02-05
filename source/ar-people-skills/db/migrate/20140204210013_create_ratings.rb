class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :user
      t.belongs_to :skill
      t.float :proficiency_rating, null: false
      t.timestamps
    end
  end
end
