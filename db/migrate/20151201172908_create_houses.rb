class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
    	t.integer :food_id
    	t.integer :grocery_id
    end
  end
end
