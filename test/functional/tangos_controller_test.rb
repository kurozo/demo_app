require 'test_helper'

class TangosControllerTest < ActionController::TestCase
  setup do
    @tango = tangos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tangos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tango" do
    assert_difference('Tango.count') do
      post :create, tango: { eword: @tango.eword, jword: @tango.jword }
    end

    assert_redirected_to tango_path(assigns(:tango))
  end

  test "should show tango" do
    get :show, id: @tango
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tango
    assert_response :success
  end

  test "should update tango" do
    put :update, id: @tango, tango: { eword: @tango.eword, jword: @tango.jword }
    assert_redirected_to tango_path(assigns(:tango))
  end

  test "should destroy tango" do
    assert_difference('Tango.count', -1) do
      delete :destroy, id: @tango
    end

    assert_redirected_to tangos_path
  end
end
