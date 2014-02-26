class CreateAuditors < ActiveRecord::Migration
  def change
    create_table :auditors do |t|
      t.string :nombre
      t.string :apellidos
      t.string :cif
      t.string :nombre_empresa
      t.string :direccion_empresa
      t.string :telefono

      t.timestamps
    end
  end
end
