require 'test_helper'

class PersonelsControllerTest < ActionController::TestCase
  setup do
    @personel = personels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personel" do
    assert_difference('Personel.count') do
      post :create, personel: {  }
    end

    assert_redirected_to personel_path(assigns(:personel))
  end

  test "should show personel" do
    get :show, id: @personel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personel
    assert_response :success
  end

  test "should update personel" do
    patch :update, id: @personel, personel: {  }
    assert_redirected_to personel_path(assigns(:personel))
  end

  test "should destroy personel" do
    assert_difference('Personel.count', -1) do
      delete :destroy, id: @personel
    end

    assert_redirected_to personels_path
  end
end
