require 'test_helper'

class VecinosControllerTest < ActionController::TestCase
  setup do
    @vecino = vecinos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vecinos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vecino" do
    assert_difference('Vecino.count') do
      post :create, vecino: { DNI: @vecino.DNI, apellidos: @vecino.apellidos, ciudad: @vecino.ciudad, cod_postal: @vecino.cod_postal, direccion: @vecino.direccion, nombre: @vecino.nombre, telefono: @vecino.telefono }
    end

    assert_redirected_to vecino_path(assigns(:vecino))
  end

  test "should show vecino" do
    get :show, id: @vecino
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vecino
    assert_response :success
  end

  test "should update vecino" do
    patch :update, id: @vecino, vecino: { DNI: @vecino.DNI, apellidos: @vecino.apellidos, ciudad: @vecino.ciudad, cod_postal: @vecino.cod_postal, direccion: @vecino.direccion, nombre: @vecino.nombre, telefono: @vecino.telefono }
    assert_redirected_to vecino_path(assigns(:vecino))
  end

  test "should destroy vecino" do
    assert_difference('Vecino.count', -1) do
      delete :destroy, id: @vecino
    end

    assert_redirected_to vecinos_path
  end
end
