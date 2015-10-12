class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_link_type
      t.integer :image_link_id
      t.string :url

      t.timestamps null: false
    end
  end
end
