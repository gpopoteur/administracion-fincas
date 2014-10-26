json.array!(@materiales_auditoria) do |materiales_auditorium|
  json.extract! materiales_auditorium, :id, :visitum_id, :autorium_id
  json.url materiales_auditorium_url(materiales_auditorium, format: :json)
end
