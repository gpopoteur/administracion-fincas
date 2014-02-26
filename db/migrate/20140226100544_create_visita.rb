class CreateVisita < ActiveRecord::Migration
  def change
    create_table :visita do |t|
      t.integer :autoria_id
      t.float :importe

      t.timestamps
    end
  end
end
