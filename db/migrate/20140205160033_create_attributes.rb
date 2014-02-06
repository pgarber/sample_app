class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :attribute_name
      t.binary :good
      t.integer :opposite_id

      t.timestamps
    end
  end
end
