class CreatePantries < ActiveRecord::Migration
  def change
    create_table :pantries do |t|
    	t.string :item
    	t.integer :quantity
    	t.integer :prefered
    end
  end
end
