class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.belongs_to :user
      t.belongs_to :skill
      t.integer :rating, default: 0
    end
  end
end
