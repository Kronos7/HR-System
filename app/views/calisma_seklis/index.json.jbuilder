json.array!(@calisma_seklis) do |calisma_sekli|
  json.extract! calisma_sekli, :id, :icerik
  json.url calisma_sekli_url(calisma_sekli, format: :json)
end
