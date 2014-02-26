require 'test_helper'

class MateriaCursosControllerTest < ActionController::TestCase
  setup do
    @materia_curso = materia_cursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materia_cursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materia_curso" do
    assert_difference('MateriaCurso.count') do
      post :create, materia_curso: { curso_id: @materia_curso.curso_id, materium_id: @materia_curso.materium_id }
    end

    assert_redirected_to materia_curso_path(assigns(:materia_curso))
  end

  test "should show materia_curso" do
    get :show, id: @materia_curso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @materia_curso
    assert_response :success
  end

  test "should update materia_curso" do
    patch :update, id: @materia_curso, materia_curso: { curso_id: @materia_curso.curso_id, materium_id: @materia_curso.materium_id }
    assert_redirected_to materia_curso_path(assigns(:materia_curso))
  end

  test "should destroy materia_curso" do
    assert_difference('MateriaCurso.count', -1) do
      delete :destroy, id: @materia_curso
    end

    assert_redirected_to materia_cursos_path
  end
end
