class Curso < ActiveRecord::Base

	has_many :materia_curso
	has_many :materia, :through => :materia_curso

	has_many :inscripcion
	has_many :vecinos, :through => :inscripcion

end
