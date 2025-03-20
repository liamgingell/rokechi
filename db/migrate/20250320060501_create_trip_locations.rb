class CreateTripLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :trip_locations do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.integer :visit_order

      t.timestamps
    end
  end
end
