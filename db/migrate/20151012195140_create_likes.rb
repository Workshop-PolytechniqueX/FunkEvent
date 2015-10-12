class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :id_user
      t.string :like_link_type
      t.integer :like_link_id

      t.timestamps null: false
    end
  end
end
