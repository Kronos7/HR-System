require 'test_helper'

class LokasyonsControllerTest < ActionController::TestCase
  setup do
    @lokasyon = lokasyons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lokasyons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lokasyon" do
    assert_difference('Lokasyon.count') do
      post :create, lokasyon: { icerik: @lokasyon.icerik }
    end

    assert_redirected_to lokasyon_path(assigns(:lokasyon))
  end

  test "should show lokasyon" do
    get :show, id: @lokasyon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lokasyon
    assert_response :success
  end

  test "should update lokasyon" do
    patch :update, id: @lokasyon, lokasyon: { icerik: @lokasyon.icerik }
    assert_redirected_to lokasyon_path(assigns(:lokasyon))
  end

  test "should destroy lokasyon" do
    assert_difference('Lokasyon.count', -1) do
      delete :destroy, id: @lokasyon
    end

    assert_redirected_to lokasyons_path
  end
end
