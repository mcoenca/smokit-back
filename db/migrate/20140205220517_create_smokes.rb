class CreateSmokes < ActiveRecord::Migration
  def change
    create_table :smokes do |t|
      t.integer :user_id
      t.datetime :smoke_date
      t.decimal :smoke_lat
      t.decimal :smoke_long

      t.timestamps
    end
  end
end
