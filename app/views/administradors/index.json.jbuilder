json.array!(@administradors) do |administrador|
  json.extract! administrador, :id, :nombre
  json.url administrador_url(administrador, format: :json)
end
