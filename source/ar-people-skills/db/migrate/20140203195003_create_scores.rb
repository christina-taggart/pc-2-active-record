class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.belongs_to :user
      t.belongs_to :skill
      t.integer :score
    end
  end
end
