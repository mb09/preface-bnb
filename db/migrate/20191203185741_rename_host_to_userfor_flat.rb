class RenameHostToUserforFlat < ActiveRecord::Migration[5.2]
  def change
  	rename_column :flats, :host_id, :user_id
  end
end
