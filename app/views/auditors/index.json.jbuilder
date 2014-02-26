json.array!(@auditors) do |auditor|
  json.extract! auditor, :id, :nombre, :apellidos, :cif, :nombre_empresa, :direccion_empresa, :telefono
  json.url auditor_url(auditor, format: :json)
end
