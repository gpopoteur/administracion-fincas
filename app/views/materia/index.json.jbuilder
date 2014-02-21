json.array!(@materia) do |materium|
  json.extract! materium, :id, :nombre, :horas
  json.url materium_url(materium, format: :json)
end
