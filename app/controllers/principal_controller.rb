class PrincipalController < ApplicationController
  def index
  end

  def prueba
  end

  def hotel
  end

  def instalaciones
  end

  def lasHabitaciones
  end

  def ubicacion
  end

  def nosotros
  end

  def turismo
  end

  def missing
  end

  def comentarios
    @comentarios = Comentario.reorder("created_at DESC").paginate(:page => params[:page] , :per_page => 1)
  end

  def contacto
  end

  def create
    @comentario = Comentario.new(comentario_params)
    if @comentario.save
      flash[:notice]="Gracias por su interés en Puka Killa."
      redirect_to(:root)
    else
      flash[:notice]="No cumplio los estandares de publicacion. (No se llenaron todos los datos/Email incorrecto) "
      redirect_to(:back)
    end
  end

  private 
  def comentario_params
    params.require(:comentario).permit(:contenido,:autor)
  end
end
