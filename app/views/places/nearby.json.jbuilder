json.array!(@places) do |place|
  json.extract! place, :id, :name, :description, :website, :capacity, :latitude, :longitude
  json.url place_url(place, format: :json)
end