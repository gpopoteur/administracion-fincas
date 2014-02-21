class Vecino < ActiveRecord::Base

	validates_presence_of :DNI
	validates_presence_of :nombre
	validates_presence_of :apellidos
	validates_presence_of :direccion
	validates_presence_of :ciudad
	validates_presence_of :cod_postal
	validates_presence_of :telefono

	has_many :facturas
	has_many :fichas

end
