class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :contenido
      t.string :autor

      t.timestamps
    end
  end
end
