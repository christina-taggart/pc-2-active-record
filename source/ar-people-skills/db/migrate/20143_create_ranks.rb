class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.integer :user_id
      t.integer :skill_id
      t.integer :rank, default: 0
    end
  end
end

