class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :title
      t.string :director
      t.integer :release_year
      t.text :description
      t.string :poster_url

      t.timestamps
    end
  end
end
