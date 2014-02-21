class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.integer :vecino_id

      t.timestamps
    end
  end
end
