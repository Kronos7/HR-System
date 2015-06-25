json.array!(@birims) do |birim|
  json.extract! birim, :id, :icerik
  json.url birim_url(birim, format: :json)
end
