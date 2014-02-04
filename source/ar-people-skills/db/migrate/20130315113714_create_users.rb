class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |col|
      col.string :name, :email
      col.timestamps
    end
  end
end
