class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :user, null: false
      t.belongs_to :skill, null: false
      t.float :proficiency_rating, null: false
      t.timestamps
    end
  end
end
