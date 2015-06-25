require 'test_helper'

class CalismaSeklisControllerTest < ActionController::TestCase
  setup do
    @calisma_sekli = calisma_seklis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calisma_seklis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calisma_sekli" do
    assert_difference('CalismaSekli.count') do
      post :create, calisma_sekli: { icerik: @calisma_sekli.icerik }
    end

    assert_redirected_to calisma_sekli_path(assigns(:calisma_sekli))
  end

  test "should show calisma_sekli" do
    get :show, id: @calisma_sekli
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calisma_sekli
    assert_response :success
  end

  test "should update calisma_sekli" do
    patch :update, id: @calisma_sekli, calisma_sekli: { icerik: @calisma_sekli.icerik }
    assert_redirected_to calisma_sekli_path(assigns(:calisma_sekli))
  end

  test "should destroy calisma_sekli" do
    assert_difference('CalismaSekli.count', -1) do
      delete :destroy, id: @calisma_sekli
    end

    assert_redirected_to calisma_seklis_path
  end
end
