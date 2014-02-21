class MateriaCurso < ActiveRecord::Base

	belongs_to :materium
	belongs_to :curso

end
