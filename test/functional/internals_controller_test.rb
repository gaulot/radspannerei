require 'test_helper'

class InternalsControllerTest < ActionController::TestCase
  setup do
    @internal = internals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:internals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create internal" do
    assert_difference('Internal.count') do
      post :create, internal: @internal.attributes
    end

    assert_redirected_to internal_path(assigns(:internal))
  end

  test "should show internal" do
    get :show, id: @internal.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @internal.to_param
    assert_response :success
  end

  test "should update internal" do
    put :update, id: @internal.to_param, internal: @internal.attributes
    assert_redirected_to internal_path(assigns(:internal))
  end

  test "should destroy internal" do
    assert_difference('Internal.count', -1) do
      delete :destroy, id: @internal.to_param
    end

    assert_redirected_to internals_path
  end
end
