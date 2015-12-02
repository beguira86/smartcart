class AddTitleToEdibles < ActiveRecord::Migration
  def self.up
  	add_column :edibles, :title, :string
  	add_column :edibles, :brand, :string
  	add_column :edibles, :house_id, :integer
  end
  def self.down
  	remove_column :edibles, :title, :string
  	remove_column :edibles, :brand, :string
  	remove_column :edibles, :house_id, :integer
	end
end
