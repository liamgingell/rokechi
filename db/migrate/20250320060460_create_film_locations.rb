class CreateFilmLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :film_locations do |t|
      t.references :film, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.string :scene_description

      t.timestamps
    end
  end
end
