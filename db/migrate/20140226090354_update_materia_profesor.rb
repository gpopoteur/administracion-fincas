class UpdateMateriaProfesor < ActiveRecord::Migration
  def change
  	add_column :materia, :profesor_id, :integer
  end
end
