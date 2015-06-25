require 'test_helper'

class IsBilgisisControllerTest < ActionController::TestCase
  setup do
    @is_bilgisi = is_bilgisis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:is_bilgisis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create is_bilgisi" do
    assert_difference('IsBilgisi.count') do
      post :create, is_bilgisi: { birim: @is_bilgisi.birim, calisma_sekli: @is_bilgisi.calisma_sekli, haftalik_saat: @is_bilgisi.haftalik_saat, lokasyon: @is_bilgisi.lokasyon, personel_id: @is_bilgisi.personel_id, unvan: @is_bilgisi.unvan }
    end

    assert_redirected_to is_bilgisi_path(assigns(:is_bilgisi))
  end

  test "should show is_bilgisi" do
    get :show, id: @is_bilgisi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @is_bilgisi
    assert_response :success
  end

  test "should update is_bilgisi" do
    patch :update, id: @is_bilgisi, is_bilgisi: { birim: @is_bilgisi.birim, calisma_sekli: @is_bilgisi.calisma_sekli, haftalik_saat: @is_bilgisi.haftalik_saat, lokasyon: @is_bilgisi.lokasyon, personel_id: @is_bilgisi.personel_id, unvan: @is_bilgisi.unvan }
    assert_redirected_to is_bilgisi_path(assigns(:is_bilgisi))
  end

  test "should destroy is_bilgisi" do
    assert_difference('IsBilgisi.count', -1) do
      delete :destroy, id: @is_bilgisi
    end

    assert_redirected_to is_bilgisis_path
  end
end
