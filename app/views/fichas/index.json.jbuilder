json.array!(@fichas) do |ficha|
  json.extract! ficha, :id, :vecino_id, :administrador_id, :fecha, :descripcion, :importe, :pagada
  json.url ficha_url(ficha, format: :json)
end
