class CreateListLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :list_locations do |t|
      t.references :list, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
