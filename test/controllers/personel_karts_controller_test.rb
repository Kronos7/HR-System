require 'test_helper'

class PersonelKartsControllerTest < ActionController::TestCase
  setup do
    @personel_kart = personel_karts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personel_karts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personel_kart" do
    assert_difference('PersonelKart.count') do
      post :create, personel_kart: { adres: @personel_kart.adres, anne_adi: @personel_kart.anne_adi, baba_adi: @personel_kart.baba_adi, bilgisayar_bil: @personel_kart.bilgisayar_bil, cep_no: @personel_kart.cep_no, dogum_tarihi: @personel_kart.dogum_tarihi, ehliyet_no: @personel_kart.ehliyet_no, ev_no: @personel_kart.ev_no, isim: @personel_kart.isim, kan_gr: @personel_kart.kan_gr, lise: @personel_kart.lise, personel_id: @personel_kart.personel_id, proje_bil: @personel_kart.proje_bil, sinav_bil: @personel_kart.sinav_bil, soyisim: @personel_kart.soyisim, tc_kimlik: @personel_kart.tc_kimlik, universite: @personel_kart.universite }
    end

    assert_redirected_to personel_kart_path(assigns(:personel_kart))
  end

  test "should show personel_kart" do
    get :show, id: @personel_kart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personel_kart
    assert_response :success
  end

  test "should update personel_kart" do
    patch :update, id: @personel_kart, personel_kart: { adres: @personel_kart.adres, anne_adi: @personel_kart.anne_adi, baba_adi: @personel_kart.baba_adi, bilgisayar_bil: @personel_kart.bilgisayar_bil, cep_no: @personel_kart.cep_no, dogum_tarihi: @personel_kart.dogum_tarihi, ehliyet_no: @personel_kart.ehliyet_no, ev_no: @personel_kart.ev_no, isim: @personel_kart.isim, kan_gr: @personel_kart.kan_gr, lise: @personel_kart.lise, personel_id: @personel_kart.personel_id, proje_bil: @personel_kart.proje_bil, sinav_bil: @personel_kart.sinav_bil, soyisim: @personel_kart.soyisim, tc_kimlik: @personel_kart.tc_kimlik, universite: @personel_kart.universite }
    assert_redirected_to personel_kart_path(assigns(:personel_kart))
  end

  test "should destroy personel_kart" do
    assert_difference('PersonelKart.count', -1) do
      delete :destroy, id: @personel_kart
    end

    assert_redirected_to personel_karts_path
  end
end
