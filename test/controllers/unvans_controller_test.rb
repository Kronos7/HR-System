require 'test_helper'

class UnvansControllerTest < ActionController::TestCase
  setup do
    @unvan = unvans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unvans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unvan" do
    assert_difference('Unvan.count') do
      post :create, unvan: { icerik: @unvan.icerik }
    end

    assert_redirected_to unvan_path(assigns(:unvan))
  end

  test "should show unvan" do
    get :show, id: @unvan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unvan
    assert_response :success
  end

  test "should update unvan" do
    patch :update, id: @unvan, unvan: { icerik: @unvan.icerik }
    assert_redirected_to unvan_path(assigns(:unvan))
  end

  test "should destroy unvan" do
    assert_difference('Unvan.count', -1) do
      delete :destroy, id: @unvan
    end

    assert_redirected_to unvans_path
  end
end
