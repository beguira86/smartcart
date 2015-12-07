class AddPrimaryToHouses < ActiveRecord::Migration
  def self.up
  	add_column :houses, :primary, :boolean, :default => true
  end
end
