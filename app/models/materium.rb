class Materium < ActiveRecord::Base

	has_many :materia_cursos
	has_many :cursos, :through => :materia_cursos
	belongs_to :profesor

end
