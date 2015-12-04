class AddUserIdEdibles < ActiveRecord::Migration
  def self.up
  	change_column :edibles, :user_id, :integer
  end
end
