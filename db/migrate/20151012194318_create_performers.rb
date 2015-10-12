class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :name
      t.string :type
      t.string :genre
      t.string :description
      t.string :url

      t.timestamps null: false
    end
  end
end
