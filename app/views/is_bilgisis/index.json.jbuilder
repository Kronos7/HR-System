json.array!(@is_bilgisis) do |is_bilgisi|
  json.extract! is_bilgisi, :id, :personel_id, :calisma_sekli, :haftalik_saat, :unvan, :birim, :lokasyon
  json.url is_bilgisi_url(is_bilgisi, format: :json)
end
