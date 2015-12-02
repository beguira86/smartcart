class AddDefaultValueGroceriesNecessity < ActiveRecord::Migration
  def self.up
  	change_column :groceries, :necessity, :boolean, :default => false
  end
end
