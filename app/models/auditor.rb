class Auditor < ActiveRecord::Base
	validates_presence_of :nombre
    validates_presence_of :apellidos
    validates_presence_of :cif
    validates_presence_of :nombre_empresa
    validates_presence_of :direccion_empresa
    validates_presence_of :telefono

end
