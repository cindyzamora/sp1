require 'test_helper'

class ProyectosControllerTest < ActionController::TestCase
  setup do
    @proyecto = proyectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proyectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proyecto" do
    assert_difference('Proyecto.count') do
      post :create, proyecto: { descripcion: @proyecto.descripcion, fecha_cierre: @proyecto.fecha_cierre, fecha_inicio: @proyecto.fecha_inicio, fecha_limite: @proyecto.fecha_limite, id_usuario: @proyecto.id_usuario, monto_actual: @proyecto.monto_actual, monto_total: @proyecto.monto_total, nombre: @proyecto.nombre, status: @proyecto.status, visible: @proyecto.visible }
    end

    assert_redirected_to proyecto_path(assigns(:proyecto))
  end

  test "should show proyecto" do
    get :show, id: @proyecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proyecto
    assert_response :success
  end

  test "should update proyecto" do
    put :update, id: @proyecto, proyecto: { descripcion: @proyecto.descripcion, fecha_cierre: @proyecto.fecha_cierre, fecha_inicio: @proyecto.fecha_inicio, fecha_limite: @proyecto.fecha_limite, id_usuario: @proyecto.id_usuario, monto_actual: @proyecto.monto_actual, monto_total: @proyecto.monto_total, nombre: @proyecto.nombre, status: @proyecto.status, visible: @proyecto.visible }
    assert_redirected_to proyecto_path(assigns(:proyecto))
  end

  test "should destroy proyecto" do
    assert_difference('Proyecto.count', -1) do
      delete :destroy, id: @proyecto
    end

    assert_redirected_to proyectos_path
  end
end
