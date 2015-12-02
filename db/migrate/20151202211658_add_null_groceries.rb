class AddNullGroceries < ActiveRecord::Migration
  def self.up
  	change_column :groceries, :title, :string, :null => false
  end
end
