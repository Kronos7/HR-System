json.array!(@etkinlik_bilgisis) do |etkinlik_bilgisi|
  json.extract! etkinlik_bilgisi, :id, :personel_id, :baslangic, :bitis, :etkinlik
  json.url etkinlik_bilgisi_url(etkinlik_bilgisi, format: :json)
end
