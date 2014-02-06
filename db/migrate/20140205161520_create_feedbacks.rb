class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :from_id
      t.integer :to_id
      t.integer :attribute_id

      t.timestamps
    end
  end
end
