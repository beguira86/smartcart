class RemoveNullGroceries < ActiveRecord::Migration
  def self.up
  	change_column :groceries, :quantity, :integer, :null => true
  	change_column :groceries, :preferred, :integer, :null => true
	end
end