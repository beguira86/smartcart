class AddUnitsToBothEdiblesGroceries < ActiveRecord::Migration
  def self.up
  	remove_column :groceries, :quantity_type, :string
  	remove_column :edibles, :quantity_type, :string
  	add_column :groceries, :units, :string
  	add_column :edibles, :units, :string
	end
end
