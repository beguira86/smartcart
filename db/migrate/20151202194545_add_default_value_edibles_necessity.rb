class AddDefaultValueEdiblesNecessity < ActiveRecord::Migration
  def self.up
  	change_column :edibles, :necessity, :boolean, :default => false
  end
end
