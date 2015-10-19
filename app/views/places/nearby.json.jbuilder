json.array!(@places) do |place|
  json.extract! place, :id, :description, :website, :capacity
  json.url place_url(place, format: :json)
end