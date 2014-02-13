class DropUsers < ActiveRecord::Migration
  def change
  end

  def self.down
  	drop_table :Users
  end

end
