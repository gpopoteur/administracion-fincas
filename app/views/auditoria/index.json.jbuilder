json.array!(@auditoria) do |auditorium|
  json.extract! auditorium, :id, :auditor_id
  json.url auditorium_url(auditorium, format: :json)
end
