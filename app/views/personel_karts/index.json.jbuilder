json.array!(@personel_karts) do |personel_kart|
  json.extract! personel_kart, :id, :personel_id, :isim, :soyisim, :tc_kimlik, :dogum_tarihi, :baba_adi, :anne_adi, :ehliyet_no, :lise, :universite, :cep_no, :ev_no, :adres, :proje_bil, :sinav_bil, :bilgisayar_bil, :kan_gr
  json.url personel_kart_url(personel_kart, format: :json)
end
