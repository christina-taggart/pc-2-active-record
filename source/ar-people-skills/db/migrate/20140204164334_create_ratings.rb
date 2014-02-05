class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.belongs_to :skill
      t.integer :proficiency, default: 0
  end
end
