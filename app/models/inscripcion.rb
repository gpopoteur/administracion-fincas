class Inscripcion < ActiveRecord::Base
	belongs_to :vecino
	belongs_to :curso
end
