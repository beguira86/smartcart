class AddIdToGroceries < ActiveRecord::Migration
  def self.up
  	add_column :groceries, :title, :string
  	add_column :groceries, :brand, :string
  	add_column :groceries, :house_id, :integer
  end

  def self.down
  	remove_column :groceries, :title, :string
  	remove_column :groceries, :brand, :string
  	remove_column :groceries, :house_id, :integer
  end
end
