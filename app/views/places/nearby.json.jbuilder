json.array!(@places) do |place|
  json.extract! place, :id, :name, :description, :url_place, :adress, :capacity, :latitude, :longitude
  json.url place_url(place, format: :json)
end