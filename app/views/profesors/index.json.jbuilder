json.array!(@profesors) do |profesor|
  json.extract! profesor, :id, :nombre, :apellidos, :direccion, :telefono, :sueldo
  json.url profesor_url(profesor, format: :json)
end
