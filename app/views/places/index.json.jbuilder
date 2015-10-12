json.array!(@places) do |place|
  json.extract! place, :id, :latitude, :longitude, :description, :website, :capacity
  json.url place_url(place, format: :json)
end
