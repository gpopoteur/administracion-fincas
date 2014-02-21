class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nombre
      t.integer :duracion
      t.float :precio
      t.integer :capacidad_curso
      t.date :fecha_inicio
      t.date :fecha_fin

      t.timestamps
    end
  end
end
