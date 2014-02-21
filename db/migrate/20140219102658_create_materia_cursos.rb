class CreateMateriaCursos < ActiveRecord::Migration
  def change
    create_table :materia_cursos do |t|
      t.integer :curso_id
      t.integer :materia_id

      t.timestamps
    end
  end
end
