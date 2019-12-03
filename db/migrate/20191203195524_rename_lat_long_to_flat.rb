class RenameLatLongToFlat < ActiveRecord::Migration[5.2]
  def change
  	rename_column :flats, :lat, :latitude
  	rename_column :flats, :long, :longitude
  end
end
