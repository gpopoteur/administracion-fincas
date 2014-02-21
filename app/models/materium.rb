class Materium < ActiveRecord::Base

	has_many :materia_curso
	has_many :cursos, :through => :materia_curso

end
