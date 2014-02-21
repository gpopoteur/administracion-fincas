json.array!(@cursos) do |curso|
  json.extract! curso, :id, :nombre, :duracion, :precio, :capacidad_curso, :fecha_inicio, :fecha_fin
  json.url curso_url(curso, format: :json)
end
