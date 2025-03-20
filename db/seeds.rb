# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(username: "testuser", email: "test@example.com", password: "password")

Film.create!(title: "Inception", director: "Christopher Nolan", release_year: 2010, description: "A mind-bending thriller", poster_url: "inception.jpg")

Location.create!(name: "Shibuya Crossing", address: "Tokyo, Japan", latitude: 35.6595, longitude: 139.7005, verified: true)

FilmLocation.create!(film_id: 1, location_id: 1, scene_description: "Dream cityscape scene")
