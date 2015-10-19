json.array!(@places) do |place|
  json.extract! place, :id, :name, :latitude, :longitude, :description, :website, :capacity
  json.url place_url(place, format: :json)
end
