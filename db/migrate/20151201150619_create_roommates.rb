class CreateRoommates < ActiveRecord::Migration
  def change
    create_table :roommates do |t|
    	t.integer :user_id
    	t.integer :house_id
    end
  end
end
