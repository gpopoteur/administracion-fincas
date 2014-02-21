class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.integer :vecino_id
      t.integer :administrador_id
      t.date :fecha
      t.string :descripcion
      t.float :importe
      t.boolean :pagada

      t.timestamps
    end
  end
end
