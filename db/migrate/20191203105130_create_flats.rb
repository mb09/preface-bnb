class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :name
      t.text :description
      t.text :address
      t.string :photo
      t.float :lat
      t.float :long
      t.string :photo
      t.belongs_to :host

      t.timestamps
    end
  end
end
