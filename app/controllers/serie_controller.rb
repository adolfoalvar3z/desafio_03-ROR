class SerieController < ApplicationController
  def index
    @series = Serie.all
  end

  def create
    @name = params["name"]
    @synopsis = params["synopsis"]
    @director = params["director"]

    #Crear instancia User
    @serie = Serie.new(name: @name, synopsis: @synopsis, director: @director)
    #guardar en la base de datos
    if @serie.save
      redirect_to serie_path, notice: 'Serie creada exitosamente.'
    else
      redirect_to "/serie/new", notice: 'No se ha podido agregar la Serie.'
    end
  end

  def new
  end
end
