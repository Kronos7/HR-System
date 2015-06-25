json.array!(@personels) do |personel|
  json.extract! personel, :id
  json.url personel_url(personel, format: :json)
end
