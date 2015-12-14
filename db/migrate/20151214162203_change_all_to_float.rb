class ChangeAllToFloat < ActiveRecord::Migration
  def self.up
  	change_column :edibles, :absolute, :float
  	change_column :groceries, :quantity, :float
  end
  def self.down
  	change_column :edibles, :absolute, :integer
  	change_column :groceries, :quantity, :integer  	
  end
end
