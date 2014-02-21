class Ficha < ActiveRecord::Base

	belongs_to :vecino
	belongs_to :factura
	belongs_to :administrador

end
