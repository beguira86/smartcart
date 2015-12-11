class AddCalculatedQuantity < ActiveRecord::Migration
  def self.up
  	add_column :groceries, :absolute, :integer
  	add_column :edibles, :absolute, :integer
  end
  def self.down
  	remove_column :groceries, :absolute, :integer
  	remove_column :edibles, :absolute, :integer
  end
end
