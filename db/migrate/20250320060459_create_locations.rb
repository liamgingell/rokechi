class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :image_url
      t.boolean :verified
      t.integer :submitted_by

      t.timestamps
    end
  end
end
