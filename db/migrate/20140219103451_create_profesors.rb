class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|
      t.string :nombre
      t.string :apellidos
      t.string :direccion
      t.string :telefono
      t.float :sueldo

      t.timestamps
    end
  end
end
