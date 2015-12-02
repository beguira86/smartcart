class AddNullEdibles < ActiveRecord::Migration
  def self.up
  	change_column :edibles, :title, :string, :null => false
  end
end
