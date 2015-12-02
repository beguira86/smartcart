class RemoveNullEdibles < ActiveRecord::Migration
  def self.up
  	change_column :edibles, :quantity, :integer, :null => true
  	change_column :edibles, :preferred, :integer, :null => true
  end
end
