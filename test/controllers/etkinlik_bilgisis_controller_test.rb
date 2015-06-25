require 'test_helper'

class EtkinlikBilgisisControllerTest < ActionController::TestCase
  setup do
    @etkinlik_bilgisi = etkinlik_bilgisis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:etkinlik_bilgisis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create etkinlik_bilgisi" do
    assert_difference('EtkinlikBilgisi.count') do
      post :create, etkinlik_bilgisi: { baslangic: @etkinlik_bilgisi.baslangic, bitis: @etkinlik_bilgisi.bitis, etkinlik: @etkinlik_bilgisi.etkinlik, personel_id: @etkinlik_bilgisi.personel_id }
    end

    assert_redirected_to etkinlik_bilgisi_path(assigns(:etkinlik_bilgisi))
  end

  test "should show etkinlik_bilgisi" do
    get :show, id: @etkinlik_bilgisi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @etkinlik_bilgisi
    assert_response :success
  end

  test "should update etkinlik_bilgisi" do
    patch :update, id: @etkinlik_bilgisi, etkinlik_bilgisi: { baslangic: @etkinlik_bilgisi.baslangic, bitis: @etkinlik_bilgisi.bitis, etkinlik: @etkinlik_bilgisi.etkinlik, personel_id: @etkinlik_bilgisi.personel_id }
    assert_redirected_to etkinlik_bilgisi_path(assigns(:etkinlik_bilgisi))
  end

  test "should destroy etkinlik_bilgisi" do
    assert_difference('EtkinlikBilgisi.count', -1) do
      delete :destroy, id: @etkinlik_bilgisi
    end

    assert_redirected_to etkinlik_bilgisis_path
  end
end
