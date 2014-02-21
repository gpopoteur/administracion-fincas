class Factura < ActiveRecord::Base

	has_many :fichas
	belongs_to :vecino

end
