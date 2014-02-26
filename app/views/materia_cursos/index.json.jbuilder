json.array!(@materia_cursos) do |materia_curso|
  json.extract! materia_curso, :id, :materium_id, :curso_id
  json.url materia_curso_url(materia_curso, format: :json)
end
