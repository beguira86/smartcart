class ChangeQuantityToFloat < ActiveRecord::Migration
  def self.up
  	change_column :edibles, :quantity, :float
  	change_column :groceries, :absolute, :float
  end
  def self.down
  	change_column :edibles, :quantity, :integer
  	change_column :groceries, :absolute, :integer  	
  end
end
