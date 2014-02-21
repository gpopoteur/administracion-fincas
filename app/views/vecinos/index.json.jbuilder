json.array!(@vecinos) do |vecino|
  json.extract! vecino, :id, :DNI, :nombre, :apellidos, :direccion, :cod_postal, :ciudad, :telefono
  json.url vecino_url(vecino, format: :json)
end
