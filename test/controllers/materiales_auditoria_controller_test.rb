require 'test_helper'

class MaterialesAuditoriaControllerTest < ActionController::TestCase
  setup do
    @materiales_auditorium = materiales_auditoria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materiales_auditoria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materiales_auditorium" do
    assert_difference('MaterialesAuditorium.count') do
      post :create, materiales_auditorium: { autorium_id: @materiales_auditorium.autorium_id, visitum_id: @materiales_auditorium.visitum_id }
    end

    assert_redirected_to materiales_auditorium_path(assigns(:materiales_auditorium))
  end

  test "should show materiales_auditorium" do
    get :show, id: @materiales_auditorium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @materiales_auditorium
    assert_response :success
  end

  test "should update materiales_auditorium" do
    patch :update, id: @materiales_auditorium, materiales_auditorium: { autorium_id: @materiales_auditorium.autorium_id, visitum_id: @materiales_auditorium.visitum_id }
    assert_redirected_to materiales_auditorium_path(assigns(:materiales_auditorium))
  end

  test "should destroy materiales_auditorium" do
    assert_difference('MaterialesAuditorium.count', -1) do
      delete :destroy, id: @materiales_auditorium
    end

    assert_redirected_to materiales_auditoria_path
  end
end
