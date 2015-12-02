class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
    	t.integer :quantity, null: false
    	t.integer :preferred, null: false
    	t.boolean :necessity, null: false
    	t.string :category    	
    end
  end
end
