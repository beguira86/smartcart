class AddQuantityTypeToBothEdiblesGroceries < ActiveRecord::Migration
  def self.up
  	add_column :groceries, :quantity_type, :string
  	add_column :edibles, :quantity_type, :string
  end
end
