class CreateInscripcions < ActiveRecord::Migration
  def change
    create_table :inscripcions do |t|
      t.integer :vecino_id
      t.integer :curso_id

      t.timestamps
    end
  end
end
