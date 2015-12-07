class AddAndRemovePrimary < ActiveRecord::Migration
  def self.up
  	add_column :roommates, :primary, :boolean, :default => true
  	remove_column :houses, :primary, :boolean
  end
end
