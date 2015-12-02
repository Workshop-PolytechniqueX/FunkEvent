class AddColumn < ActiveRecord::Migration
  def change
    rename_column :performers, :url, :url_performer
    add_column :places, :url_place, :string
    add_column :places, :adress, :string
  end
end
