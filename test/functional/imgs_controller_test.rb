require 'test_helper'

class ImgsControllerTest < ActionController::TestCase
  setup do
    @img = imgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create img" do
    assert_difference('Img.count') do
      post :create, img: { extension: @img.extension, proyecto_id: @img.proyecto_id, titulo: @img.titulo }
    end

    assert_redirected_to img_path(assigns(:img))
  end

  test "should show img" do
    get :show, id: @img
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @img
    assert_response :success
  end

  test "should update img" do
    put :update, id: @img, img: { extension: @img.extension, proyecto_id: @img.proyecto_id, titulo: @img.titulo }
    assert_redirected_to img_path(assigns(:img))
  end

  test "should destroy img" do
    assert_difference('Img.count', -1) do
      delete :destroy, id: @img
    end

    assert_redirected_to imgs_path
  end
end
