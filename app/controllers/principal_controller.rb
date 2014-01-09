class PrincipalController < ApplicationController
  def index
  end

  def prueba
  end

  def hotel
  end

  def instalaciones
  end

  def ubicacion
  end

  def nosotros
  end

  def turismo
  end

  def comentarios
    @comentarios = Comentario.all
  end

  def contacto
  end

  def create
    @comentario = Comentario.new(comentario_params)
    if @comentario.save
      flash[:notice]="Gracias por su interés en Jatun Jallpa, su solicitud ha sido enviada correctamente y nos pondremos en contacto con usted tan pronto como podamos. Que tenga un buen día."
      redirect_to(:root)
    else
      flash[:notice]="No cumplio los estandares de publicacion. (No se llenaron todos los datos/Email incorrecto) "
      redirect_to(:back)
    end
  end

  private 
  def comentario_params
    params.require(:comentarios).permit(:contenido,:autor)
  end
end
