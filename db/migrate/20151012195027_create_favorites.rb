class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :id_user
      t.string :favorite_link_type
      t.integer :favorite_link_id

      t.timestamps null: false
    end
  end
end
