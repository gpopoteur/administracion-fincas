json.array!(@materials) do |material|
  json.extract! material, :id, :nombre, :precio
  json.url material_url(material, format: :json)
end
