class Profesor < ActiveRecord::Base

	has_many :materias

	def nombre_completo
		self.nombre + ' ' + self.apellidos
	end

end
