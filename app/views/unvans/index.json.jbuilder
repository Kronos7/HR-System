json.array!(@unvans) do |unvan|
  json.extract! unvan, :id, :icerik
  json.url unvan_url(unvan, format: :json)
end
