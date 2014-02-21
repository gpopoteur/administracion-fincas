class Administrador < ActiveRecord::Base

	validates_presence_of :nombre

	has_many :fichas

end
