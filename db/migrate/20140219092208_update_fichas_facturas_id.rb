class UpdateFichasFacturasId < ActiveRecord::Migration
  def change
  	add_column :fichas, :factura_id, :integer
  end
end
