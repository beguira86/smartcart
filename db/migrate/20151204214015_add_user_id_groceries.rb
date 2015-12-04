class AddUserIdGroceries < ActiveRecord::Migration
  def self.up
  	change_column :groceries, :user_id, :integer
end
