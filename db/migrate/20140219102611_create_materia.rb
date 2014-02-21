class CreateMateria < ActiveRecord::Migration
  def change
    create_table :materia do |t|
      t.string :nombre
      t.integer :horas

      t.timestamps
    end
  end
end
