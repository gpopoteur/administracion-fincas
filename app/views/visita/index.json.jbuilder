json.array!(@visita) do |visitum|
  json.extract! visitum, :id, :autoria_id, :importe
  json.url visitum_url(visitum, format: :json)
end
