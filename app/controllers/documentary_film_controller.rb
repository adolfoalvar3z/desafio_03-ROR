class DocumentaryFilmController < ApplicationController
  def index
    @documentaryFilms = DocumentaryFilm.all
  end

  def create
    @documentaryFilm = DocumentaryFilm.new(name: params["name"], synopsis: params["synopsis"], director: params["director"])

    if @documentaryFilm.save
      redirect_to documentary_path, notice: 'Documentary creada exitosamente.'
    else
      redirect_to "/documentary_film/new", notice: 'No se ha podido agregar Documentary.'
    end
  end

  def new
  end
end
