class CreateFilmTrivia < ActiveRecord::Migration[7.1]
  def change
    create_table :film_trivia do |t|
      t.references :film_location, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
