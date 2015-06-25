json.array!(@lokasyons) do |lokasyon|
  json.extract! lokasyon, :id, :icerik
  json.url lokasyon_url(lokasyon, format: :json)
end
