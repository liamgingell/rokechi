class FilmsController < ApplicationController
  def index
    films = Film.all
    render json: films
  end

  def show
    film = Film.find(params[:id])
    render json: film.to_json(include: {film_locations: {include: :location} })
  rescue ActiveRecord::RecordNotFound
    render json: {error: "Film not found"}, status: :not_found
  end
end
