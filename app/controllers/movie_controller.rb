class MovieController < ApplicationController
  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(name: params["name"], synopsis: params["synopsis"], director: params["director"])
    if @movie.save
      redirect_to movie_path, notice: 'Movie creada exitosamente.'
    else
      redirect_to "/movie/new", notice: 'No se ha podido agregar la Movie.'
    end

  end

  def new
  end
end
