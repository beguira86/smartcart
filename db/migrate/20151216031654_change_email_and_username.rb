class ChangeEmailAndUsername < ActiveRecord::Migration
  def self.up
  	change_column_null(:users, :email, true)
  end
  def self.down
  	change_column_null(:users, :email, false)
  end
end
