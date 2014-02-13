class ChangeRatingsFormatInUsersTable < ActiveRecord::Migration
  def self.up
  	change_column :users, :ratings, :text
  end

  def self.down
  	change_column :users, :ratings, :array
  end
end
