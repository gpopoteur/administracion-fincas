class CreateVecinos < ActiveRecord::Migration
  def change
    create_table :vecinos do |t|
      t.string :DNI
      t.string :nombre
      t.string :apellidos
      t.string :direccion
      t.string :cod_postal
      t.string :ciudad
      t.string :telefono

      t.timestamps
    end
  end
end
