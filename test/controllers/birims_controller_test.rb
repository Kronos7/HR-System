require 'test_helper'

class BirimsControllerTest < ActionController::TestCase
  setup do
    @birim = birims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:birims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create birim" do
    assert_difference('Birim.count') do
      post :create, birim: { icerik: @birim.icerik }
    end

    assert_redirected_to birim_path(assigns(:birim))
  end

  test "should show birim" do
    get :show, id: @birim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @birim
    assert_response :success
  end

  test "should update birim" do
    patch :update, id: @birim, birim: { icerik: @birim.icerik }
    assert_redirected_to birim_path(assigns(:birim))
  end

  test "should destroy birim" do
    assert_difference('Birim.count', -1) do
      delete :destroy, id: @birim
    end

    assert_redirected_to birims_path
  end
end
