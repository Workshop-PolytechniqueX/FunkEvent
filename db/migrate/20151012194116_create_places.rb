class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.float :latitude
      t.float :longitude
      t.string :description
      t.string :website
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
