class FixColumnName < ActiveRecord::Migration
    def change
      rename_column :images, :url, :url_image
    end
end
