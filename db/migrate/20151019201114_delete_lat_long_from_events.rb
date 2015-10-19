class DeleteLatLongFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :latitude, :float
    remove_column :events, :longitude, :float
  end
end
