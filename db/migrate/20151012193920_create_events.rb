class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :place_id
      t.integer :performer_id
      t.string :description
      t.date :date
      t.float :price

      t.timestamps null: false
    end
  end
end
