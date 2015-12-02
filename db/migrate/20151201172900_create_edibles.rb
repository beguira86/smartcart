class CreateEdibles < ActiveRecord::Migration
  def change
    create_table :edibles do |t|
    	t.integer :quantity
    	t.integer :preferred
    	t.boolean :necessity
    	t.string :category
    end
  end
end
