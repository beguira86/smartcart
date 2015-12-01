class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
    	t.integer :user_id
    	t.integer :pantry_id
    end
  end
end
