require 'test_helper'

class AuditorsControllerTest < ActionController::TestCase
  setup do
    @auditor = auditors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auditors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auditor" do
    assert_difference('Auditor.count') do
      post :create, auditor: { apellidos: @auditor.apellidos, cif: @auditor.cif, direccion_empresa: @auditor.direccion_empresa, nombre: @auditor.nombre, nombre_empresa: @auditor.nombre_empresa, telefono: @auditor.telefono }
    end

    assert_redirected_to auditor_path(assigns(:auditor))
  end

  test "should show auditor" do
    get :show, id: @auditor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auditor
    assert_response :success
  end

  test "should update auditor" do
    patch :update, id: @auditor, auditor: { apellidos: @auditor.apellidos, cif: @auditor.cif, direccion_empresa: @auditor.direccion_empresa, nombre: @auditor.nombre, nombre_empresa: @auditor.nombre_empresa, telefono: @auditor.telefono }
    assert_redirected_to auditor_path(assigns(:auditor))
  end

  test "should destroy auditor" do
    assert_difference('Auditor.count', -1) do
      delete :destroy, id: @auditor
    end

    assert_redirected_to auditors_path
  end
end
