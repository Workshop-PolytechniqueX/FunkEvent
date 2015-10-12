class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :id_place
      t.integer :id_performer
      t.string :description
      t.date :date
      t.float :price

      t.timestamps null: false
    end
  end
end
